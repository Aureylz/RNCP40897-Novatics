#!/bin/bash
# =============================================================================
# NOVATICS - Script de compilation des livrables Typst
# Version 2.1 - Corrigé pour compilation multiple
# =============================================================================

# Couleurs pour l'affichage
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Répertoires
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_ROOT="$(dirname "$SCRIPT_DIR")"
DOCS_DIR="$PROJECT_ROOT/docs"
LIVRABLES_DIR="$DOCS_DIR/livrables"
OUTPUT_DIR="$DOCS_DIR/output"
TEMPLATES_DIR="$DOCS_DIR/templates"

# Compteurs
COMPILED=0
FAILED=0

# Fonction d'affichage
print_header() {
    echo -e "\n${BLUE}=== $1 ===${NC}\n"
}

print_success() {
    echo -e "${GREEN}✓${NC} $1"
}

print_error() {
    echo -e "${RED}✗${NC} $1"
}

print_warning() {
    echo -e "${YELLOW}⚠${NC} $1"
}

print_info() {
    echo -e "${BLUE}ℹ${NC} $1"
}

# Vérification des prérequis
check_prerequisites() {
    print_header "Vérification des prérequis"
    
    if ! command -v typst &> /dev/null; then
        print_error "Typst n'est pas installé. Installez-le avec: cargo install typst-cli"
        exit 1
    fi
    print_success "Typst installé ($(typst --version))"
    
    if [ ! -d "$LIVRABLES_DIR" ]; then
        print_error "Répertoire des livrables introuvable: $LIVRABLES_DIR"
        exit 1
    fi
    print_success "Répertoire livrables: $LIVRABLES_DIR"
    
    mkdir -p "$OUTPUT_DIR"
    print_success "Répertoire output: $OUTPUT_DIR"
    
    if [ ! -f "$TEMPLATES_DIR/novatics-template.typ" ]; then
        print_warning "Template non trouvé: $TEMPLATES_DIR/novatics-template.typ"
    else
        print_success "Template trouvé"
    fi
}

# Compilation d'un fichier Typst
compile_file() {
    local input_file="$1"
    local filename=$(basename "$input_file" .typ)
    local output_file="$OUTPUT_DIR/$filename.pdf"
    
    if [[ "$filename" == "README" ]]; then
        return 0
    fi
    
    print_info "Compilation: $filename"
    
    if typst compile --root "$PROJECT_ROOT" "$input_file" "$output_file" 2>&1; then
        print_success "  → $output_file"
        COMPILED=$((COMPILED + 1))
    else
        print_error "  Échec de compilation: $filename"
        FAILED=$((FAILED + 1))
    fi
}

# Compilation de tous les fichiers d'un répertoire
compile_directory() {
    local dir="$1"
    local dir_name=$(basename "$dir")
    
    local typ_files=("$dir"/*.typ)
    if [ ! -e "${typ_files[0]}" ]; then
        return 0
    fi
    
    print_header "Compilation: $dir_name"
    
    for file in "$dir"/*.typ; do
        if [ -f "$file" ]; then
            compile_file "$file"
        fi
    done
}

# Compilation sélective par bloc
compile_bloc() {
    local bloc="$1"
    local bloc_dir="$LIVRABLES_DIR/$bloc"
    
    if [ ! -d "$bloc_dir" ]; then
        print_error "Bloc introuvable: $bloc"
        exit 1
    fi
    
    compile_directory "$bloc_dir"
}

# Compilation de tous les blocs
compile_all() {
    for dir in "$LIVRABLES_DIR"/*/; do
        if [ -d "$dir" ]; then
            compile_directory "$dir"
        fi
    done
}

# Nettoyage des fichiers générés
clean() {
    print_header "Nettoyage"
    
    if [ -d "$OUTPUT_DIR" ]; then
        rm -f "$OUTPUT_DIR"/*.pdf
        print_success "Fichiers PDF supprimés de $OUTPUT_DIR"
    fi
}

# Liste des fichiers disponibles
list_files() {
    print_header "Fichiers Typst disponibles"
    
    for dir in "$LIVRABLES_DIR"/*/; do
        if [ -d "$dir" ]; then
            local dir_name=$(basename "$dir")
            echo -e "\n${BLUE}$dir_name/${NC}"
            
            for file in "$dir"/*.typ; do
                if [ -f "$file" ] && [[ "$(basename "$file")" != "README.typ" ]]; then
                    local filename=$(basename "$file" .typ)
                    local output_file="$OUTPUT_DIR/$filename.pdf"
                    
                    if [ -f "$output_file" ]; then
                        echo -e "  ${GREEN}●${NC} $filename (compilé)"
                    else
                        echo -e "  ${YELLOW}○${NC} $filename (non compilé)"
                    fi
                fi
            done
        fi
    done
}

# Affichage du résumé
print_summary() {
    print_header "Résumé"
    echo -e "Compilés avec succès: ${GREEN}$COMPILED${NC}"
    echo -e "Échecs:               ${RED}$FAILED${NC}"
    
    if [ $FAILED -gt 0 ]; then
        exit 1
    fi
}

# Affichage de l'aide
show_help() {
    echo "Usage: $0 [COMMAND]"
    echo ""
    echo "Commandes:"
    echo "  all, -a          Compiler tous les fichiers (défaut)"
    echo "  bloc-1           Compiler uniquement le bloc 1"
    echo "  bloc-2           Compiler uniquement le bloc 2"
    echo "  bloc-3           Compiler uniquement le bloc 3"
    echo "  bloc-4           Compiler uniquement le bloc 4"
    echo "  general          Compiler les documents généraux"
    echo "  clean, -c        Supprimer les fichiers PDF générés"
    echo "  list, -l         Lister les fichiers disponibles"
    echo "  help, -h         Afficher cette aide"
}

# Point d'entrée principal
main() {
    local command="${1:-all}"
    
    case "$command" in
        all|-a|"")
            check_prerequisites
            compile_all
            print_summary
            ;;
        bloc-1|bloc-2|bloc-3|bloc-4|general)
            check_prerequisites
            compile_bloc "$command"
            print_summary
            ;;
        clean|-c)
            clean
            ;;
        list|-l)
            list_files
            ;;
        help|-h|--help)
            show_help
            ;;
        *)
            print_error "Commande inconnue: $command"
            show_help
            exit 1
            ;;
    esac
}

main "$@"