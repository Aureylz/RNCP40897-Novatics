# RNCP40897 - Expert en Cybersécurité | Novatics

<div align="center">

![Novatics Logo](docs/assets/novatics-logo.png)

**Projet de certification RNCP40897 (Expert Cybersécurité - Niveau 7)**

*Simulation complète de l'architecture et de la gouvernance sécurité d'une scale-up DeepTech/Robotique*

[![Typst](https://img.shields.io/badge/Typst-239DAD?style=for-the-badge&logo=typst&logoColor=white)](https://typst.app/)
[![License](https://img.shields.io/badge/License-MIT-green?style=for-the-badge)](LICENSE)

</div>

---

## À propos du projet

Ce repository contient l'ensemble des livrables produits dans le cadre de la certification **RNCP40897 - Expert en Cybersécurité** (Bloc 1 : Analyse stratégique et gouvernance).

### Contexte fictif : Novatics SAS

| Attribut | Valeur |
|----------|--------|
| **Secteur** | Robotique de sauvetage / DeepTech / Défense |
| **Taille** | PME scale-up (85 collaborateurs) |
| **CA** | 12,5M EUR (2025) |
| **Enjeu majeur** | Conformité DGA (II 901) pour contrat classifié DR |

### Périmètre couvert

- **IT de gestion** : Bureautique, SaaS, postes de travail
- **OT (Operational Technology)** : Usine de production Chambéry
- **IoT/Embarqué** : Flotte de robots (N-Eye, N-Seeker, N-Sonar)
- **Cloud** : AWS Paris (Novatics Cloud)

---

## Structure du repository

```
RNCP40897-Novatics/
├── docs/
│   ├── livrables/           # Sources Typst des documents
│   │   ├── B1-A1-C1-fiche-identite-ssi.typ
│   │   ├── B1-A1-C2-organigramme-raci.typ
│   │   └── ...
│   ├── templates/           # Template Typst réutilisable
│   │   └── novatics-template.typ
│   ├── assets/              # Images et logos
│   │   ├── novatics-logo.png
│   │   └── novatics-full-logo.png
│   └── output/              # PDFs générés (gitignore)
├── src/                     # Scripts et outils
├── .vscode/                 # Configuration VSCode
│   ├── settings.json
│   └── extensions.json
├── GUIDELINES.md            # Conventions de rédaction
├── LICENSE
└── README.md
```

---

## Livrables du Bloc 1

### B1.A1 - Audit de l'organisation et cartographie SI

| Réf. | Livrable | Statut |
|------|----------|--------|
| B1-A1-C1-01 | Fiche d'identité SSI | ✅ Terminé |
| B1-A1-C1-02 | Organigramme fonctionnel SSI + RACI | 🔄 En cours |
| B1-A1-C1-03 | Registre des parties prenantes | ⏳ Planifié |
| B1-A1-C2-01 | Cartographie macro du SI | ⏳ Planifié |
| B1-A1-C2-02 | Inventaire des actifs critiques | ⏳ Planifié |
| B1-A1-C3-01 | Rapport de veille stratégique | ⏳ Planifié |
| B1-A1-C4-01 | Analyse de risques EBIOS RM | ⏳ Planifié |

### B1.A2 - Définition de la stratégie SSI

| Réf. | Livrable | Statut |
|------|----------|--------|
| B1-A2-C1-01 | Note de cadrage PSSI | ⏳ Planifié |
| B1-A2-C2-01 | Gap Analysis ISO 27001 / II 901 | ⏳ Planifié |
| B1-A2-C3-01 | Plan d'actions SSI (PAS) | ⏳ Planifié |

### B1.A3 - Documentation et résilience

| Réf. | Livrable | Statut |
|------|----------|--------|
| B1-A3-C1-01 | Référentiel documentaire SSI | ⏳ Planifié |
| B1-A3-C2-01 | Stratégie PCA/PRA | ⏳ Planifié |
| B1-A3-C3-01 | Plan de sensibilisation | ⏳ Planifié |

---

## Installation et compilation

### Prérequis

- [Typst](https://typst.app/) (compilateur de documents)
- [Visual Studio Code](https://code.visualstudio.com/) (recommandé)

### Installation de Typst

**macOS (Homebrew) :**
```bash
brew install typst
```

**Windows (Winget) :**
```bash
winget install --id Typst.Typst
```

**Linux (Cargo) :**
```bash
cargo install --git https://github.com/typst/typst --locked typst-cli
```

**Vérifier l'installation :**
```bash
typst --version
```

### Compilation d'un document

```bash
# Depuis la racine du projet
cd docs
typst compile --root . livrables/B1-A1-C1-fiche-identite-ssi.typ output/B1-A1-C1-fiche-identite-ssi.pdf
```

### Mode watch (recompilation automatique)

```bash
typst watch --root . livrables/B1-A1-C1-fiche-identite-ssi.typ output/B1-A1-C1-fiche-identite-ssi.pdf
```

### Compiler tous les livrables

```bash
# Script bash pour tout compiler
for file in docs/livrables/*.typ; do
  name=$(basename "$file" .typ)
  typst compile --root docs "$file" "docs/output/${name}.pdf"
done
```

---

## Configuration VSCode

### Extensions recommandées

Installer les extensions suivantes pour une expérience optimale :

| Extension | ID | Description |
|-----------|-----|-------------|
| **Typst LSP** | `nvarner.typst-lsp` | Autocomplétion, diagnostics, preview |
| **Typst Preview** | `mgt19937.typst-preview` | Preview temps réel dans VSCode |
| **PDF Viewer** | `tomoki1207.pdf` | Visualiser les PDFs générés |

**Installation rapide :**
```bash
code --install-extension nvarner.typst-lsp
code --install-extension mgt19937.typst-preview
code --install-extension tomoki1207.pdf
```

### Configuration workspace

Le fichier `.vscode/settings.json` est fourni avec la configuration optimale :

```json
{
  "typst-lsp.exportPdf": "onSave",
  "typst-lsp.rootPath": "docs",
  "editor.formatOnSave": true,
  "[typst]": {
    "editor.wordWrap": "on",
    "editor.quickSuggestions": {
      "comments": "on",
      "strings": "on",
      "other": "on"
    }
  }
}
```

---

## Conventions de rédaction

Voir le fichier [GUIDELINES.md](GUIDELINES.md) pour les conventions détaillées :

- Classification TLP (AMBER pour docs sensibles)
- Format des noms : `Prénom NOM`
- Titres en minuscules (sauf acronymes)
- Guillemets droits `" "`
- Tableaux avec lignes horizontales et verticales
- Callouts avec icônes rondes

---

## Charte graphique Novatics

| Couleur | Hex | Usage |
|---------|-----|-------|
| **Petrol** | `#2A526E` | Couleur principale, headers |
| **Cyan** | `#41BEC7` | Accents, liens, badges |
| **Orange** | `#EF9636` | Alertes, warnings |
| **Gold** | `#F7B94B` | Highlights |
| **Gray Light** | `#F1F5F9` | Fonds, backgrounds |

---

## Référentiels appliqués

- **ISO 27001:2022** - Système de management de la sécurité de l'information
- **ISO 27005** - Gestion des risques
- **EBIOS RM** - Méthodologie d'analyse de risques (ANSSI)
- **NIS2** - Directive européenne cybersécurité
- **II 901** - Protection des SI traitant des informations sensibles (Défense)
- **IGI 1300** - Instructions générales interministérielles (habilitations)
- **RGPD** - Protection des données personnelles

---

## Licence

Ce projet est sous licence MIT - voir le fichier [LICENSE](LICENSE) pour plus de détails.

---

## Auteur

**Aureylz**

Candidat à la certification RNCP40897 - Expert en Cybersécurité

---

<div align="center">

*Ce projet est une simulation à des fins pédagogiques. Novatics SAS est une entreprise fictive.*

</div>