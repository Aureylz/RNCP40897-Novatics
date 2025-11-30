# Novatics Document Guidelines

## Template Typst v5.0 - Guide d'utilisation

Ce document décrit les conventions et bonnes pratiques pour créer des documents professionnels Novatics avec le template Typst.

---

## 1. Structure du projet

```
.
├── GUIDELINES.md                 # Ce document
├── README.md                     # Présentation du projet
├── LICENSE                       # Licence MIT
├── build.sh                      # Script de compilation
│
├── novatics-template.typ         # Template Typst principal
├── novatics-logo.png             # Logo sans slogan (header)
├── novatics-full-logo.png        # Logo avec slogan (page de garde)
│
├── RNCP40897__*.pdf              # Référentiels certification
│
├── B1-A1-C1-*.typ                # Livrables Bloc 1 - Activité 1 - Compétence 1
├── internal-*.typ                # Documents internes (guides, notes)
│
└── output/                       # PDFs générés (gitignore)
```

---

## 2. Convention de nommage des livrables

### Pattern : `BX-AX-CX-NN-nom-document.typ`

| Segment | Signification | Exemple |
|---------|---------------|---------|
| `BX` | Numéro de Bloc (B1 à B4) | `B1` = Analyse et gouvernance |
| `AX` | Numéro d'Activité dans le bloc | `A1` = Analyser l'écosystème cyber |
| `CX` | Numéro de Compétence dans l'activité | `C1` = Présenter l'organisation |
| `NN` | Numéro séquentiel du document (01-99) | `01`, `02`, `03` |
| `nom-document` | Titre court en kebab-case | `fiche-identite-ssi` |

### Exemples

| Fichier | Signification |
|---------|---------------|
| `B1-A1-C1-01-fiche-identite-ssi.typ` | Bloc 1, Activité 1, Compétence 1, Document 1 : Fiche d'identité SSI |
| `B1-A1-C1-02-organigramme-raci.typ` | Bloc 1, Activité 1, Compétence 1, Document 2 : Organigramme et RACI |
| `B1-A2-C1-01-note-cadrage-pssi.typ` | Bloc 1, Activité 2, Compétence 1, Document 1 : Note de cadrage PSSI |
| `B1-A3-C1-01-analyse-risques-ebios.typ` | Bloc 1, Activité 3, Compétence 1, Document 1 : Analyse de risques EBIOS RM |

### Documents internes (hors certification)

Préfixer par `internal-` sans numérotation bloc :

- `internal-guide-onboarding.typ` : Guide d'intégration nouveaux arrivants
- `internal-note-information-dga.typ` : Note d'information contrat DGA

---

## 3. Configuration d'un nouveau document

### Paramètres obligatoires

```typst
#import "novatics-template.typ": *

#show: novatics-doc.with(
  title: "Titre du document",
  subtitle: "Sous-titre optionnel",
  doc-category: "Note de cadrage",           // Catégorie affichée en pill
  reference: "NOV-SSI-B1A1C1-001",           // Référence unique
  version: "1.0",
  date: datetime(year: 2025, month: 11, day: 15),
  author: "Mei Lin ZHAO, CISO",
  tlp: "AMBER",                               // RED, AMBER, GREEN, CLEAR
  logo-path: "novatics-full-logo.png",        // Logo avec slogan pour page de garde
)
```

### Classification TLP

| TLP | Usage | Couleur badge |
|-----|-------|---------------|
| `RED` | Informations hautement sensibles (vulnérabilités critiques exploitables, accès nominatifs, données classifiées) | Rouge |
| `AMBER` | Informations sensibles : actifs critiques, analyses de risques, contexte Défense, architecture détaillée | Orange |
| `GREEN` | Informations internes génériques, procédures standards, guides utilisateur | Vert |
| `CLEAR` | Informations publiques, supports de communication externe | Blanc |

### Types de documents et TLP recommandé

| Catégorie | Exemples | TLP recommandé |
|-----------|----------|----------------|
| Note de cadrage | Fiche d'identité SSI, Note de cadrage PSSI | AMBER |
| Rapport | Analyse de risques, Gap Analysis, Audit | AMBER |
| Procédure | Gestion des incidents, Gestion des accès | GREEN |
| Fiche | Fiche réflexe PCA, Fiche de poste | GREEN |
| Plan | PAS, PCA/PRA, Plan de sensibilisation | AMBER |
| Charte | Charte utilisateur, Charte administrateur | GREEN |
| Support | Kit de sensibilisation (slides publics) | CLEAR |

---

## 4. Conventions typographiques

### Titres et sections

- **Minuscules** sauf première lettre : "Contexte réglementaire et contractuel"
- **Acronymes** : Conserver les majuscules : "SSI", "RGPD", "ISO 27001"
- **Acronymes développés** : Majuscules pour l'acronyme entre parenthèses : "Direction générale de l'armement (DGA)"

### Noms de personnes

- Format standard : `Prénom NOM` (ex: "Mei Lin ZHAO", "Alexandre DUBOIS")
- Dans les tableaux de contacts : même format

### Guillemets

- Utiliser les guillemets droits : `"Remote-First"` (pas de « »)

### Vocabulaire technique

**Pour les documents techniques** (destinés aux équipes SSI, IT, développeurs) :
- Utiliser la terminologie précise des référentiels (EBIOS RM, ISO 27001, ANSSI)
- Exemples : "bien support", "source de risque", "scénario opérationnel", "mesure de sécurité"

**Pour les documents C-Level** (COMEX, Direction) :
- Conserver le vocabulaire technique mais toujours l'expliquer
- Introduire chaque section technique par une phrase de vulgarisation
- Exemple : "Les *scénarios de risque* (situations concrètes où une menace pourrait impacter l'entreprise) identifiés sont..."

---

## 5. Composants disponibles

### 5.1 Callouts (encadrés d'information)

```typst
#callout(title: "Titre", type: "info")[
  Contenu du callout
]
```

Types disponibles :

| Type | Fond | Icône | Usage |
|------|------|-------|-------|
| `info` | Cyan clair | i | Informations générales, contexte |
| `warning` | Orange clair | ! | Avertissements, points d'attention |
| `critical` | Rouge clair | X | Alertes critiques, risques majeurs |
| `success` | Vert clair | v | Validations, conformités, bonnes pratiques |

### 5.2 Tableaux de métadonnées

```typst
#metadata-table(
  ("Clé 1", "Valeur 1"),
  ("Clé 2", "Valeur 2"),
)
```

### 5.3 KPI Cards

```typst
#grid(
  columns: (1fr, 1fr, 1fr),
  gutter: 12pt,
  kpi-card("85", "Collaborateurs", accent: novatics-petrol),
  kpi-card("12,5M€", "CA 2025", accent: novatics-cyan),
  kpi-card("5", "Sites", accent: novatics-orange),
)
```

### 5.4 Badges de statut

```typst
#status-badge("Conforme")      // Vert
#status-badge("En cours")      // Orange
#status-badge("Non conforme")  // Rouge
#status-badge("Veille")        // Gris
```

### 5.5 Indicateurs de criticité / priorité

```typst
#criticality("Critique")  // Rouge
#criticality("Élevé")     // Orange
#criticality("Modéré")    // Gold
#criticality("Faible")    // Vert
```

### 5.6 Niveaux de risque (EBIOS RM)

```typst
#risk-level("Critique")   // ou #risk-level(4)
#risk-level("Élevé")      // ou #risk-level(3)
#risk-level("Modéré")     // ou #risk-level(2)
#risk-level("Faible")     // ou #risk-level(1)
```

### 5.7 Badges de conformité réglementaire

```typst
#compliance-badge("NIS2")
#compliance-badge("RGPD")
#compliance-badge("ISO 27001")
#compliance-badge("LPM")
#compliance-badge("DR")
```

---

## 6. Composants métier cybersécurité

### 6.1 Fiche Scénario de Risque EBIOS RM

```typst
#risk-scenario-card(
  id: "SR-01",
  title: "Compromission du NCC par attaque ciblée",
  source: "Groupe APT étatique (Chine, Russie)",
  objective: "Vol de propriété intellectuelle (algorithmes SLAM)",
  attack-path: "Spear-phishing ciblé sur ingénieur R&D → Mouvement latéral → Exfiltration",
  target-assets: ("Station NCC", "Serveur GitLab R&D", "NAS Brevets"),
  impact: "Critique",
  likelihood: "Probable",
  risk-level-value: "Critique",
  existing-controls: (
    "Antivirus EDR sur postes",
    "Segmentation réseau basique",
  ),
  proposed-controls: (
    "Déploiement SOC 24/7",
    "Micro-segmentation zone R&D",
    "DLP sur flux sortants",
  ),
  residual-risk: "Modéré",
  owner: "Mei Lin ZHAO (CISO)",
)
```

### 6.2 Tableau Gap Analysis ISO 27001

```typst
#gap-analysis-table((
  (
    clause: "A.5.1",
    measure: "Politiques de sécurité de l'information",
    status: "Partiel",
    priority: "Élevé",
    remediation: "Formaliser la PSSI et la faire valider par le COMEX",
  ),
  (
    clause: "A.8.2",
    measure: "Classification de l'information",
    status: "Non conforme",
    priority: "Critique",
    remediation: "Déployer la politique de classification TLP + DR",
  ),
))
```

### 6.3 Tableau Plan d'Actions Sécurité (PAS)

```typst
#action-plan-table((
  (
    id: "PAS-01",
    action: "Déploiement EDR sur parc complet",
    owner: "Thomas MARTIN",
    deadline: "T2 2025",
    budget: "45k€",
    status: "En cours",
    risks: "SR-01, SR-03",
  ),
  (
    id: "PAS-02",
    action: "Mise en place SOC externalisé 24/7",
    owner: "Mei Lin ZHAO",
    deadline: "T3 2025",
    budget: "120k€/an",
    status: "Veille",
    risks: "SR-01, SR-02, SR-04",
  ),
))
```

### 6.4 Matrice de risques (Heat Map)

```typst
#risk-matrix()
```

Affiche une matrice 4x4 Vraisemblance × Impact avec code couleur automatique.

### 6.5 Tableau RACI

```typst
#raci-table(
  (
    ("Définition de la PSSI", ("C", "A", "R", "I", "I")),
    ("Analyse de risques EBIOS", ("C", "I", "R", "C", "I")),
    ("Validation des mesures", ("R", "A", "C", "I", "I")),
  ),
  ("CEO", "COMEX", "CISO", "CTO", "DRH"),
)
```

### 6.6 Roadmap / Timeline

```typst
#roadmap-item(
  quarter: "T1",
  year: "2025",
  title: "Quick Wins - Hygiène de base",
  items: (
    "Déploiement MFA sur tous les comptes",
    "Audit des droits d'accès",
    "Formation phishing équipe commerciale",
  ),
  accent: novatics-cyan,
)
```

### 6.7 Tableau de conformité multi-réglementaire

```typst
#compliance-matrix-table((
  (
    requirement: "Notification incident 24h",
    regulation: "NIS2",
    status: "Partiel",
    priority: "Critique",
    actions: "Mettre en place procédure de notification ANSSI",
  ),
  (
    requirement: "Registre des traitements",
    regulation: "RGPD",
    status: "Conforme",
    priority: "Faible",
    actions: "Maintenir à jour (DPO)",
  ),
))
```

---

## 7. Sections spéciales (sans numérotation)

Ces sections n'ont PAS de numéro de chapitre et doivent être placées en début ou fin de document :

### 7.1 Historique des versions

```typst
#version-history(
  (version: "1.0", date: "15/03/2021", changes: "Création initiale", author: "Thomas LEGRAND"),
  (version: "2.0", date: "10/01/2023", changes: "Refonte complète", author: "Julie BERNARD"),
  (version: "2.1", date: "15/11/2025", changes: "Mise à jour contexte DGA", author: "Mei Lin ZHAO"),
)
```

### 7.2 Tableau de validation

```typst
#approval-table((
  (role: "Rédacteur", name: "Mei Lin ZHAO", date: "10/11/2025"),
  (role: "Vérificateur", name: "Lena ROSTOVA", date: "13/11/2025"),
  (role: "Approbateur", name: "Alexandre DUBOIS", date: "15/11/2025"),
))
```

**Convention de dates :** Échelonner les dates de validation pour simuler un processus réel (2-5 jours entre chaque étape).

### 7.3 Table des matières

```typst
#custom-outline()
```

---

## 8. Tableaux standards

Tous les tableaux doivent avoir :
- Bordures légères horizontales ET verticales (lignes grises `novatics-gray-line`)
- En-têtes sur fond `novatics-petrol` avec texte blanc
- Coins arrondis (`radius: 6pt`)

```typst
#block(
  stroke: 1pt + novatics-gray-line,
  radius: 6pt,
  clip: true,
  width: 100%,
)[
  #set text(size: 9pt)
  #table(
    columns: (auto, 1fr, auto),
    stroke: (x, y) => (
      bottom: 0.5pt + novatics-gray-line,
      left: if x > 0 { 0.5pt + novatics-gray-line } else { 0pt },
    ),
    inset: 10pt,
    fill: (_, row) => if row == 0 { novatics-petrol } else { none },
    align: (left, left, center),
    text(fill: white, weight: "bold")[Col 1],
    text(fill: white, weight: "bold")[Col 2],
    text(fill: white, weight: "bold")[Col 3],
    // Données...
  )
]
```

### Ajuster les largeurs de colonnes

Pour éviter les retours à la ligne indésirables, utiliser des pourcentages :

```typst
columns: (18%, 32%, 50%),  // Dernière colonne plus large
```

### Bullet points dans les cellules

Pour des listes dans les tableaux, utiliser la syntaxe native Typst :

```typst
[*Colonne 1*],
[
  - Item 1
  - Item 2
  - Item 3
],
```

---

## 9. Schémas et diagrammes Draw.io

### 9.1 Conventions générales

Tous les schémas doivent respecter la charte graphique Novatics :

| Élément | Couleur | Code hex |
|---------|---------|----------|
| Cadres principaux, headers | Petrol | `#2A526E` |
| Accents, connexions importantes | Cyan | `#41BEC7` |
| Alertes, risques | Orange | `#EF9636` |
| Arrière-plans | Gris clair | `#F1F5F9` |
| Texte principal | Petrol foncé | `#1A3A4E` |

### 9.2 Structure d'un schéma professionnel

1. **Titre** : En haut, fond petrol, texte blanc, police 16pt bold
2. **Légende** : En bas à droite, encadrée, expliquant tous les symboles
3. **Zones** : Délimitées par des rectangles arrondis avec label
4. **Flux** : Flèches avec labels explicites sur chaque connexion
5. **Numérotation** : Étapes numérotées si processus séquentiel

### 9.3 Types de schémas et bonnes pratiques

#### Schéma d'architecture SI (Cartographie macro)

- Utiliser des **zones** clairement délimitées : IT, R&D, OT, Cloud, Produit
- Représenter les **flux de données** avec flèches étiquetées
- Indiquer les **niveaux de confiance** (Trust Zone) par couleur de bordure
- Marquer les **points de contrôle sécurité** (Firewall, WAF, Proxy)

```
┌─────────────────────────────────────────────────────────────┐
│ [ZONE IT - Bureautique]                           Trust: M  │
│  ┌──────┐  ┌──────┐  ┌──────┐                               │
│  │Postes│  │ AD   │  │ Mail │                               │
│  └──────┘  └──────┘  └──────┘                               │
└─────────────────────────────────────────────────────────────┘
          │ FW │
          ▼
┌─────────────────────────────────────────────────────────────┐
│ [ZONE R&D - Propriété Intellectuelle]             Trust: H  │
│  ┌──────┐  ┌──────┐  ┌──────┐                               │
│  │GitLab│  │ CAO  │  │ NAS  │                               │
│  └──────┘  └──────┘  └──────┘                               │
└─────────────────────────────────────────────────────────────┘
```

#### Schéma de flux de données

- Représenter l'**origine** et la **destination** de chaque flux
- Indiquer le **protocole** et le **port** utilisés
- Marquer la **classification** des données transportées (TLP, DR)
- Mettre en évidence les flux **sortants** (exfiltration potentielle)

#### Schéma de processus métier

- Utiliser des **swimlanes** (couloirs) par acteur/département
- Numéroter chaque étape séquentiellement
- Indiquer les **points de décision** (losanges)
- Marquer les **contrôles de sécurité** à chaque étape critique

#### Matrice Mendelow (Parties prenantes)

- Axes : Pouvoir (Y) × Intérêt (X)
- 4 quadrants : Minimal Effort, Keep Informed, Keep Satisfied, Key Players
- Placer chaque partie prenante avec un avatar/icône
- Couleur selon criticité pour le projet SSI

### 9.4 Checklist qualité schéma

- [ ] Titre explicite avec référence document
- [ ] Légende complète
- [ ] Charte couleur Novatics respectée
- [ ] Police Liberation Sans ou équivalent sans-serif
- [ ] Résolution export : 300 DPI minimum
- [ ] Format : PNG pour intégration Typst
- [ ] Taille : Largeur 100% de la zone de texte (17cm)
- [ ] Pas de texte trop petit (minimum 8pt une fois intégré)

### 9.5 Organisation des fichiers schémas

```
assets/
├── schemas/
│   ├── B1-A1-C1-04-schema-fonctionnel-global.png
│   ├── B1-A1-C1-04-schema-flux-donnees.png
│   └── B1-A1-C1-03-matrice-mendelow.png
└── draw-io/
    ├── B1-A1-C1-04-schema-fonctionnel-global.drawio
    └── ...
```

---

## 10. Organigrammes

### Boîtes uniformes

Pour les organigrammes, utiliser des boîtes de hauteur fixe pour garantir l'uniformité :

```typst
box(
  fill: novatics-petrol,
  radius: 6pt,
  inset: 10pt,
  width: 100%,
  height: 52pt,  // Hauteur fixe pour uniformité
)[
  #align(center + horizon)[
    #text(fill: white, weight: "bold", size: 9pt)[Prénom NOM]
    #v(-2pt)
    #text(fill: white.transparentize(30%), size: 8pt)[Fonction]
  ]
]
```

### Mise en évidence

Utiliser `novatics-cyan` pour mettre en évidence un rôle clé (ex: CISO dans un organigramme SSI).

---

## 11. Page de garde

La page de garde est générée automatiquement avec un design moderne :

- **Fond gris très clair** (#FEFEFE)
- Bande supérieure petrol avec ligne cyan
- **Logo avec slogan** (7cm de haut) - utiliser `novatics-full-logo.png`
- Ligne de séparation cyan
- Pill de catégorie (doc-category)
- Titre et sous-titre
- **Cartouche blanc avec bordure petrol** (référence, version, date)
- **Badge TLP séparé** en dessous du cartouche
- Bande inférieure petrol

**Important :** 
- Le logo de la page de garde est celui avec slogan (`novatics-full-logo.png`)
- Le logo du header (pages suivantes) est sans slogan (`novatics-logo.png`) - fixé dans le template

---

## 12. Headers et footers

### Header (pages 2+)

- Pill catégorie (ex: "Note de cadrage") à gauche
- Titre du document centré
- Logo sans slogan (novatics-logo.png) à droite - taille 1.2cm

### Footer (pages 2+)

- Badge TLP coloré (à gauche)
- Pagination "X / Y" (centre)
- Version et date (à droite)

---

## 13. Palette de couleurs

```typst
// Couleurs principales
#let novatics-petrol = rgb("#2A526E")      // Couleur principale
#let novatics-petrol-light = rgb("#3A6B8E")
#let novatics-petrol-dark = rgb("#1A3A4E")
#let novatics-cyan = rgb("#41BEC7")        // Accent / Tech
#let novatics-orange = rgb("#EF9636")      // Alertes
#let novatics-gold = rgb("#F7B94B")        // Highlights

// Gris
#let novatics-gray-light = rgb("#F1F5F9")  // Backgrounds
#let novatics-gray = rgb("#64748B")        // Texte secondaire
#let novatics-gray-line = rgb("#E2E8F0")   // Bordures légères

// Sémantiques
#let color-critical = rgb("#DC2626")       // Rouge critique
#let color-high = novatics-orange          // Orange élevé
#let color-medium = novatics-gold          // Gold modéré
#let color-low = rgb("#22C55E")            // Vert faible
```

---

## 14. Compilation

### Compilation simple

```bash
typst compile B1-A1-C1-01-fiche-identite-ssi.typ output/B1-A1-C1-01-fiche-identite-ssi.pdf
```

### Mode watch (recompilation automatique)

```bash
typst watch B1-A1-C1-01-fiche-identite-ssi.typ output/B1-A1-C1-01-fiche-identite-ssi.pdf
```

### Script de build complet

```bash
./build.sh
```

Compile tous les fichiers `.typ` du répertoire racine vers `output/`.

---

## 15. Gestion des sauts de page

### Éviter les coupures de blocs

Si un callout, tableau ou section risque d'être coupé entre deux pages, ajouter un saut de page explicite :

```typst
#pagebreak()

#callout(title: "Information importante", type: "critical")[
  Contenu qui doit rester sur une seule page
]
```

### Règles générales

- **Callouts** : Ne jamais couper un callout en deux pages
- **Tableaux** : Éviter les coupures au milieu d'un tableau (sauf très longs tableaux)
- **Sections** : Si un titre de section se retrouve seul en bas de page, forcer le saut
- **Fiches de poste / Scénarios de risque** : Toujours un `#pagebreak()` entre chaque fiche

---

## 16. Checklist avant publication

### Métadonnées

- [ ] TLP approprié au contenu (AMBER pour docs sensibles)
- [ ] Référence unique respectant le pattern `NOV-SSI-BXAXCX-NNN`
- [ ] Version cohérente avec l'historique
- [ ] Date de version à jour

### Contenu

- [ ] Historique des versions cohérent avec l'ancienneté du document
- [ ] Dates de validation échelonnées (2-5 jours entre chaque étape)
- [ ] Noms au format "Prénom NOM"
- [ ] Acronymes développés à la première occurrence
- [ ] Vocabulaire technique expliqué pour documents C-Level

### Forme

- [ ] Pas de majuscules superflues dans les titres
- [ ] Guillemets droits " " (pas de « »)
- [ ] Tableaux avec lignes horizontales ET verticales
- [ ] Colonnes dimensionnées pour éviter les retours à la ligne
- [ ] Pas de blocs coupés entre deux pages

### Assets

- [ ] Logo avec slogan sur page de garde (`novatics-full-logo.png`)
- [ ] Schémas au format PNG, résolution 300 DPI
- [ ] Schémas respectant la charte graphique Novatics

### Compilation

- [ ] Compilation sans erreur
- [ ] Vérification visuelle du PDF généré
- [ ] Pagination correcte

---

## 17. Références croisées entre documents

### Convention de référencement

Pour faire référence à un autre document du corpus :

```typst
Voir le document #link("B1-A1-C1-01")[Fiche d'identité SSI] pour le contexte organisationnel.
```

### Architecture documentaire Bloc 1

```
B1-A1 : Analyser l'écosystème cyber
├── B1-A1-C1 : Présenter l'organisation
│   ├── 01 - Fiche d'identité SSI
│   ├── 02 - Organigramme et RACI
│   ├── 03 - Registre des parties prenantes
│   └── 04 - Schéma fonctionnel et processus métiers
│
├── B1-A1-C2 : Cartographier le SI
│   ├── 01 - Cartographie macro du SI
│   └── 02 - Matrice des flux
│
└── B1-A1-C3 : Réaliser une veille
    └── 01 - Rapport de veille menaces

B1-A2 : Définir la PSSI
├── B1-A2-C1 : Définir la PSSI
│   └── 01 - Note de cadrage PSSI
│
├── B1-A2-C2 : Réaliser une Gap Analysis
│   └── 01 - Synthèse Gap Analysis ISO 27001
│
└── B1-A2-C3 : Définir le Plan d'Actions
    └── 01 - Plan d'Actions Sécurité (PAS)

B1-A3 : Analyser les risques
├── B1-A3-C1 : Conduire l'analyse de risques
│   ├── 01 - Analyse de risques EBIOS RM
│   └── 02 - Cartographie des risques
│
└── B1-A3-C2 : Concevoir les plans de résilience
    ├── 01 - PCA/PRA
    └── 02 - Plan de sauvegarde
```

---

## 18. Ressources et sources de vérité

### Documents de référence projet

| Document | Contenu | Usage |
|----------|---------|-------|
| `full-context.md` | Contexte complet Novatics (chiffres, noms, dates, infra) | Source de vérité pour toutes les données |
| `dga-appendix.md` | Annexe spécifique contrat DGA (II 901, DR, homologation) | Contexte réglementaire Défense |
| `RNCP40897__Référentiel_de_certification_dExpert_en_cybersécurité.pdf` | Grille d'évaluation certification | Structure des livrables |

### Référentiels externes

| Référentiel | Périmètre | Lien |
|-------------|-----------|------|
| ISO 27001:2022 | SMSI, contrôles | Norme payante |
| EBIOS RM | Analyse de risques | anssi.gouv.fr |
| NIS2 | Directive européenne | eur-lex.europa.eu |
| II 901 | Systèmes sensibles Défense | legifrance.gouv.fr |
| Guide PSSI ANSSI | Politique de sécurité | anssi.gouv.fr |

---

*Document maintenu par l'équipe SSI Novatics - Dernière mise à jour : v5.0*