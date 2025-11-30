// =============================================================================
// NOVATICS - Organisation et gouvernance SSI
// Document : B1-A1-C1-02 | Référence : NOV-SSI-2025-002
// =============================================================================

#import "/docs/templates/novatics-template.typ": *

#show: novatics-doc.with(
  title: "Organisation et gouvernance SSI",
  subtitle: "Organigramme, rôles et matrices RACI",
  doc-category: "Gouvernance",
  reference: "NOV-SSI-2025-002",
  version: "1.0",
  date: datetime(year: 2025, month: 11, day: 25),
  author: "Mei Lin ZHAO, CISO",
  tlp: "AMBER",
  logo-path: "/docs/assets/pictures/logo/novatics-full-logo.png",
)

// -----------------------------------------------------------------------------
// CONTRÔLE DOCUMENTAIRE
// -----------------------------------------------------------------------------

#version-history(
  (version: "0.1", date: "10/11/2025", author: "Mei Lin ZHAO", changes: "Création initiale"),
  (version: "0.2", date: "18/11/2025", author: "Mei Lin ZHAO", changes: "Ajout matrices RACI"),
  (version: "1.0", date: "25/11/2025", author: "Mei Lin ZHAO", changes: "Validation COMEX"),
)

#v(0.5em)

#approval-table((
  (role: "Rédacteur", name: "Mei Lin ZHAO", date: "22/11/2025"),
  (role: "Vérificateur", name: "Dr. Lena ROSTOVA", date: "24/11/2025"),
  (role: "Approbateur", name: "Alexandre DUBOIS", date: "25/11/2025"),
))

#pagebreak()

#custom-outline()

#pagebreak()

// =============================================================================
// CHAPITRE 1 : OBJET ET PÉRIMÈTRE
// =============================================================================

= Objet et périmètre

== Objectif du document

Le présent document définit l'organisation de la fonction Sécurité des Systèmes d'Information (SSI) au sein de Novatics SAS. Il formalise le positionnement du CISO, les rôles et responsabilités des différents acteurs, les instances de gouvernance et les matrices RACI associées aux processus de sécurité.

Ce document constitue la référence pour la répartition des responsabilités en matière de cybersécurité et répond aux exigences de gouvernance imposées par la directive NIS2 et la norme ISO 27001.

== Documents de référence

#block(
  stroke: 1pt + novatics-gray-line,
  radius: 6pt,
  clip: true,
  width: 100%,
)[
  #set text(size: 9pt)
  #table(
    columns: (25%, 50%, 25%),
    stroke: 0.5pt + novatics-gray-line,
    inset: 8pt,
    fill: (_, row) => if row == 0 { novatics-petrol } else { none },
    align: (left, left, left),
    text(fill: white, weight: "bold")[Référence],
    text(fill: white, weight: "bold")[Document],
    text(fill: white, weight: "bold")[Statut],

    [NOV-SSI-2025-001], [Fiche d'identité SSI], [En vigueur],
    [NOV-SSI-2025-010], [Note de cadrage PSSI], [En cours],
    [ISO 27001:2022], [Clause 5 - Leadership], [Référentiel],
    [NIS2], [Article 20 - Gouvernance], [Réglementation],
  )
]

#pagebreak()

// =============================================================================
// CHAPITRE 2 : ORGANIGRAMME SSI
// =============================================================================

= Organigramme SSI

== Vue d'ensemble

L'organigramme ci-dessous présente le positionnement de la fonction SSI au sein de Novatics et les interactions avec les différentes directions.

#figure(
  image("/docs/assets/schemas/B1-A1-C1-02-organigramme-ssi.png", width: 100%),
  caption: [Organigramme de la fonction SSI],
)

== Positionnement du CISO

#callout(title: "Indépendance et rattachement", type: "info")[
  Conformément aux bonnes pratiques et aux exigences NIS2 (Article 20), le CISO dispose d'un accès direct au Comité Exécutif. Ce positionnement garantit l'indépendance de la fonction sécurité vis-à-vis des contraintes opérationnelles IT.
]

#metadata-table(
  ("Rattachement hiérarchique", "CEO (Alexandre DUBOIS)"),
  ("Rattachement fonctionnel", "COMEX (reporting mensuel)"),
  ("Budget dédié", "Ligne budgétaire autonome (~5% du CA)"),
  ("Périmètre", "Ensemble du SI (IT, OT, Cloud, Produits)"),
  ("Autorité", "Droit de veto sur les mises en production à risque"),
)

== Principes de gouvernance

La gouvernance SSI de Novatics repose sur trois principes fondamentaux :

*1. Séparation des pouvoirs* : Le CISO n'est pas rattaché à la DSI pour éviter les conflits d'intérêts entre disponibilité et sécurité.

*2. Responsabilité partagée* : Chaque direction métier est responsable de la sécurité de ses actifs, avec le support et le contrôle du CISO.

*3. Escalade garantie* : Le CISO dispose d'un accès direct au CEO et au Conseil d'Administration pour les sujets critiques.

#pagebreak()

// =============================================================================
// CHAPITRE 3 : RÔLES SSI DU COMEX
// =============================================================================

= Rôles SSI du Comité Exécutif

== Composition du COMEX

Le Comité Exécutif de Novatics comprend 9 membres. Chacun porte des responsabilités spécifiques en matière de cybersécurité.

#block(
  stroke: 1pt + novatics-gray-line,
  radius: 6pt,
  clip: true,
  width: 100%,
)[
  #set text(size: 8pt)
  #table(
    columns: (22%, 25%, 53%),
    stroke: 0.5pt + novatics-gray-line,
    inset: 8pt,
    fill: (_, row) => if row == 0 { novatics-petrol } else { none },
    align: (left, left, left),
    text(fill: white, weight: "bold")[Membre],
    text(fill: white, weight: "bold")[Fonction],
    text(fill: white, weight: "bold")[Responsabilités SSI],

    [Alexandre DUBOIS], [CEO], [Sponsor exécutif SSI, validation PSSI, arbitrages budgétaires, communication de crise],
    [Dr. Lena ROSTOVA], [CTO], [Sécurité R&D, protection IP, DevSecOps, architecture sécurisée],
    [Marco ROSSI], [COO], [Continuité d'activité, sécurité opérations terrain, PCA/PRA],
    [Claire DELACROIX], [CFO], [Budget SSI, assurance cyber, conformité financière],
    [Sarah AL-FAYED], [CCO], [Exigences clients, clauses sécurité contrats, NDA],
    [Mei Lin ZHAO], [CISO], [Pilotage SSI, conformité, gestion des risques, réponse aux incidents],
    [Marc TIBERI], [CSO], [Classification données recherche, export control, sécurité scientifique],
    [Béatrice MOREAU], [Head of Legal], [Conformité juridique, contrats, RGPD, propriété intellectuelle],
    [David CHEN], [HR Director], [Sensibilisation, clauses contractuelles, habilitations personnel],
  )
]

== Engagements de la direction

Conformément à l'ISO 27001 (clause 5.1) et NIS2 (Article 20), la direction s'engage à :

- Approuver et promouvoir la Politique de Sécurité du SI (PSSI)
- Allouer les ressources nécessaires à la mise en œuvre de la stratégie SSI
- Suivre régulièrement les indicateurs de sécurité (KPIs)
- Se former aux enjeux cyber (obligation NIS2 pour les dirigeants)
- Assumer la responsabilité en cas d'incident majeur

#pagebreak()

// =============================================================================
// CHAPITRE 4 : ÉQUIPE SSI
// =============================================================================

= Équipe SSI

== Organisation de l'équipe

L'équipe SSI de Novatics compte 6 personnes, structurée autour de trois pôles de compétences.

#block(
  stroke: 1pt + novatics-gray-line,
  radius: 6pt,
  clip: true,
  width: 100%,
)[
  #set text(size: 8pt)
  #table(
    columns: (20%, 22%, 18%, 40%),
    stroke: 0.5pt + novatics-gray-line,
    inset: 8pt,
    fill: (_, row) => if row == 0 { novatics-petrol } else { none },
    align: (left, left, left, left),
    text(fill: white, weight: "bold")[Nom],
    text(fill: white, weight: "bold")[Poste],
    text(fill: white, weight: "bold")[Pôle],
    text(fill: white, weight: "bold")[Périmètre],

    [Mei Lin ZHAO], [CISO], [Direction], [Stratégie, gouvernance, conformité, reporting COMEX],
    [Lucas BERNARD], [Security Engineer], [Opérations], [SOC, détection, réponse incidents, Wazuh],
    [Amira HASSAN], [Security Engineer], [Opérations], [Gestion vulnérabilités, hardening, audits techniques],
    [Pierre DUVAL], [DevSecOps Engineer], [R&D], [Pipeline sécurisé, SAST/DAST, secrets management],
    [Marie LEFEVRE], [GRC Analyst], [Gouvernance], [Conformité, documentation, audits, sensibilisation],
    [Julien PETIT], [OT Security Specialist], [Production], [Sécurité industrielle, Chambéry, IT/OT],
  )
]

== Répartition par pôle

#grid(
  columns: (1fr, 1fr, 1fr),
  gutter: 12pt,
  [
    #block(
      fill: novatics-cyan.transparentize(90%),
      stroke: 1pt + novatics-cyan,
      radius: 8pt,
      inset: 12pt,
      width: 100%,
    )[
      #text(weight: "bold", fill: novatics-cyan)[Pôle Opérations]
      #v(6pt)
      #set text(size: 9pt)
      2 personnes \
      SOC, détection, réponse \
      Vulnérabilités, hardening
    ]
  ],
  [
    #block(
      fill: novatics-petrol.transparentize(90%),
      stroke: 1pt + novatics-petrol,
      radius: 8pt,
      inset: 12pt,
      width: 100%,
    )[
      #text(weight: "bold", fill: novatics-petrol)[Pôle R&D / DevSecOps]
      #v(6pt)
      #set text(size: 9pt)
      1 personne \
      CI/CD sécurisé \
      SAST, DAST, secrets
    ]
  ],
  [
    #block(
      fill: novatics-orange.transparentize(90%),
      stroke: 1pt + novatics-orange,
      radius: 8pt,
      inset: 12pt,
      width: 100%,
    )[
      #text(weight: "bold", fill: novatics-orange)[Pôle GRC / OT]
      #v(6pt)
      #set text(size: 9pt)
      2 personnes \
      Conformité, documentation \
      Sécurité industrielle
    ]
  ],
)

== Correspondants sécurité

En complément de l'équipe SSI centrale, des correspondants sécurité sont identifiés dans chaque direction pour relayer les politiques et remonter les alertes.

#block(
  stroke: 1pt + novatics-gray-line,
  radius: 6pt,
  clip: true,
  width: 100%,
)[
  #set text(size: 9pt)
  #table(
    columns: (25%, 35%, 40%),
    stroke: 0.5pt + novatics-gray-line,
    inset: 8pt,
    fill: (_, row) => if row == 0 { novatics-petrol } else { none },
    align: (left, left, left),
    text(fill: white, weight: "bold")[Direction],
    text(fill: white, weight: "bold")[Correspondant],
    text(fill: white, weight: "bold")[Mission],

    [R&D], [Lead Dev (à désigner)], [Secure coding, revue de code],
    [Production], [Responsable Qualité], [Sécurité ligne assemblage],
    [Commercial], [Sales Ops Manager], [NDA, clauses sécurité],
    [RH], [Responsable Formation], [Onboarding, sensibilisation],
    [Finance], [Contrôleur de gestion], [Fraude, accès ERP],
  )
]

#pagebreak()

// =============================================================================
// CHAPITRE 5 : INSTANCES DE GOUVERNANCE
// =============================================================================

= Instances de gouvernance

== Vue d'ensemble des instances

La gouvernance SSI s'appuie sur trois niveaux d'instances complémentaires.

#block(
  stroke: 1pt + novatics-gray-line,
  radius: 6pt,
  clip: true,
  width: 100%,
)[
  #set text(size: 8pt)
  #table(
    columns: (22%, 18%, 15%, 45%),
    stroke: 0.5pt + novatics-gray-line,
    inset: 8pt,
    fill: (_, row) => if row == 0 { novatics-petrol } else { none },
    align: (left, center, center, left),
    text(fill: white, weight: "bold")[Instance],
    text(fill: white, weight: "bold")[Fréquence],
    text(fill: white, weight: "bold")[Niveau],
    text(fill: white, weight: "bold")[Objectifs],

    [Comité Stratégique SSI],
    [Trimestriel],
    [COMEX],
    [Validation stratégie, arbitrages budgétaires, revue des risques majeurs],

    [Comité Opérationnel SSI], [Mensuel], [Directions], [Suivi plan d'actions, indicateurs, incidents, conformité],
    [Réunion Équipe SSI], [Hebdomadaire], [SSI], [Coordination opérationnelle, alertes, projets en cours],
    [Cellule de Crise], [Sur activation], [COMEX+], [Gestion incidents majeurs (voir procédure dédiée)],
  )
]

== Comité Stratégique SSI (COSSI)

#metadata-table(
  ("Fréquence", "Trimestrielle (+ extraordinaire sur incident majeur)"),
  ("Président", "Alexandre DUBOIS (CEO)"),
  ("Secrétaire", "Mei Lin ZHAO (CISO)"),
  ("Participants", "COMEX complet"),
  ("Durée", "2 heures"),
)

*Ordre du jour type :*
- Tableau de bord SSI et indicateurs clés
- Revue des risques majeurs et évolutions
- Avancement du plan d'actions SSI
- Points de conformité réglementaire
- Arbitrages et décisions stratégiques

== Comité Opérationnel SSI (COPIL SSI)

#metadata-table(
  ("Fréquence", "Mensuelle (1er mardi du mois)"),
  ("Président", "Mei Lin ZHAO (CISO)"),
  ("Participants", "Équipe SSI, DSI, correspondants sécurité, DPO"),
  ("Durée", "1h30"),
)

*Ordre du jour type :*
- Revue des incidents du mois
- État des vulnérabilités et remédiations
- Avancement des projets sécurité
- Alertes et veille menaces
- Points divers et questions

#pagebreak()

// =============================================================================
// CHAPITRE 6 : MATRICES RACI
// =============================================================================

// Fonction badge RACI locale avec support A/R
#let raci-badge(value) = {
  if value == none or value == "" { return [] }
  let (bg, fg) = if value == "R" { (novatics-cyan, white) } else if value == "A" { (novatics-petrol, white) } else if (
    value == "A/R"
  ) { (rgb("#6B21A8"), white) } else if value == "C" { (novatics-gold, novatics-petrol-dark) } else if value == "I" {
    (novatics-gray-light, novatics-gray)
  } else { (white, novatics-gray) }

  box(
    fill: bg,
    inset: (x: 5pt, y: 2pt),
    radius: 4pt,
  )[
    #text(fill: fg, weight: "bold", size: 7pt)[#value]
  ]
}

= Matrices RACI

Les matrices RACI constituent un outil essentiel de gouvernance. Elles permettent de clarifier les responsabilités de chaque acteur pour les processus clés de la sécurité. Cinq matrices sont définies dans ce chapitre, couvrant les domaines suivants : gouvernance de la PSSI, gestion des risques, gestion des incidents, conformité réglementaire et exigences spécifiques NIS2.

Ces matrices doivent être revues annuellement ou lors de tout changement organisationnel significatif.

== Méthodologie RACI

La matrice RACI clarifie les responsabilités selon quatre rôles :

#block(
  stroke: 1pt + novatics-gray-line,
  radius: 6pt,
  clip: true,
  width: 100%,
)[
  #set text(size: 9pt)
  #table(
    columns: (12%, 18%, 70%),
    stroke: 0.5pt + novatics-gray-line,
    inset: 8pt,
    fill: (_, row) => if row == 0 { novatics-petrol } else { none },
    align: (center, left, left),
    text(fill: white, weight: "bold")[Rôle],
    text(fill: white, weight: "bold")[Signification],
    text(fill: white, weight: "bold")[Description],

    [#raci-badge("R")], [Responsible], [Réalise l'activité. Fait le travail.],
    [#raci-badge("A")], [Accountable], [Rend des comptes. Autorité de décision finale. Un seul A par activité.],
    [#raci-badge("A/R")], [Accountable + Responsible], [Décide ET réalise. Cumul des deux rôles.],
    [#raci-badge("C")], [Consulted], [Expertise sollicitée avant décision. Communication bidirectionnelle.],
    [#raci-badge("I")], [Informed], [Informé du résultat. Communication unidirectionnelle.],
  )
]

== Légende des rôles

#grid(
  columns: (1fr, 1fr),
  gutter: 16pt,
  [
    #block(
      stroke: 1pt + novatics-gray-line,
      radius: 6pt,
      clip: true,
      width: 100%,
    )[
      #set text(size: 8pt)
      #table(
        columns: (22%, 78%),
        stroke: 0.5pt + novatics-gray-line,
        inset: 6pt,
        fill: (_, row) => if row == 0 { novatics-petrol } else { none },
        align: (center, left),
        text(fill: white, weight: "bold")[Abrév.], text(fill: white, weight: "bold")[Rôle],
        [CEO], [Direction Générale],
        [CISO], [Responsable SSI],
        [CTO], [Direction Technique],
        [CFO], [Direction Financière],
        [COO], [Direction des Opérations],
      )
    ]
  ],
  [
    #block(
      stroke: 1pt + novatics-gray-line,
      radius: 6pt,
      clip: true,
      width: 100%,
    )[
      #set text(size: 8pt)
      #table(
        columns: (22%, 78%),
        stroke: 0.5pt + novatics-gray-line,
        inset: 6pt,
        fill: (_, row) => if row == 0 { novatics-petrol } else { none },
        align: (center, left),
        text(fill: white, weight: "bold")[Abrév.], text(fill: white, weight: "bold")[Rôle],
        [DSI], [Direction des Systèmes d'Information],
        [DPO], [Délégué Protection des Données],
        [CHRO], [Direction Ressources Humaines],
        [RMET], [Responsables Métiers],
        [CSEC], [Correspondants Sécurité],
      )
    ]
  ],
)

#pagebreak()

== RACI Gouvernance PSSI

#block(
  stroke: 1pt + novatics-gray-line,
  radius: 6pt,
  clip: true,
  width: 100%,
)[
  #set text(size: 7.5pt)
  #table(
    columns: (28%, 8%, 8%, 8%, 8%, 8%, 8%, 8%, 8%, 8%),
    stroke: 0.5pt + novatics-gray-line,
    inset: 5pt,
    fill: (_, row) => if row == 0 { novatics-petrol } else { none },
    align: (left, center, center, center, center, center, center, center, center, center),
    text(fill: white, weight: "bold")[Activité],
    text(fill: white, weight: "bold")[CEO],
    text(fill: white, weight: "bold")[CISO],
    text(fill: white, weight: "bold")[CTO],
    text(fill: white, weight: "bold")[CFO],
    text(fill: white, weight: "bold")[DSI],
    text(fill: white, weight: "bold")[DPO],
    text(fill: white, weight: "bold")[CHRO],
    text(fill: white, weight: "bold")[RMET],
    text(fill: white, weight: "bold")[CSEC],

    [Définir orientations stratégiques],
    raci-badge("A"),
    raci-badge("R"),
    raci-badge("C"),
    raci-badge("C"),
    [],
    [],
    [],
    raci-badge("C"),
    [],

    [Rédiger/mettre à jour la PSSI],
    raci-badge("C"),
    raci-badge("A/R"),
    raci-badge("C"),
    [],
    [],
    raci-badge("C"),
    [],
    raci-badge("C"),
    [],

    [Valider et approuver la PSSI],
    raci-badge("A"),
    raci-badge("R"),
    raci-badge("C"),
    raci-badge("C"),
    [],
    [],
    [],
    raci-badge("I"),
    [],

    [Communiquer la PSSI],
    raci-badge("I"),
    raci-badge("A"),
    [],
    [],
    raci-badge("R"),
    [],
    raci-badge("R"),
    [],
    raci-badge("R"),

    [Contrôler l'application PSSI],
    raci-badge("I"),
    raci-badge("A/R"),
    [],
    [],
    raci-badge("R"),
    raci-badge("C"),
    [],
    [],
    raci-badge("R"),

    [Allouer le budget sécurité],
    raci-badge("A"),
    raci-badge("C"),
    raci-badge("C"),
    raci-badge("R"),
    raci-badge("C"),
    [],
    [],
    [],
    [],

    [Rendre compte au COMEX], raci-badge("I"), raci-badge("A/R"), [], [], raci-badge("C"), raci-badge("C"), [], [], [],
  )
]

#v(1em)

== RACI Gestion des risques

#block(
  stroke: 1pt + novatics-gray-line,
  radius: 6pt,
  clip: true,
  width: 100%,
)[
  #set text(size: 7.5pt)
  #table(
    columns: (30%, 10%, 10%, 10%, 10%, 10%, 10%, 10%),
    stroke: 0.5pt + novatics-gray-line,
    inset: 5pt,
    fill: (_, row) => if row == 0 { novatics-petrol } else { none },
    align: (left, center, center, center, center, center, center, center),
    text(fill: white, weight: "bold")[Activité],
    text(fill: white, weight: "bold")[CEO],
    text(fill: white, weight: "bold")[CISO],
    text(fill: white, weight: "bold")[CTO],
    text(fill: white, weight: "bold")[CFO],
    text(fill: white, weight: "bold")[DSI],
    text(fill: white, weight: "bold")[DPO],
    text(fill: white, weight: "bold")[RMET],

    [Définir la méthodologie], raci-badge("C"), raci-badge("A"), raci-badge("C"), [], [], raci-badge("C"), [],
    [Identifier les actifs],
    raci-badge("I"),
    raci-badge("C"),
    raci-badge("R"),
    [],
    raci-badge("R"),
    [],
    raci-badge("A"),

    [Identifier menaces/vulnérabilités],
    raci-badge("I"),
    raci-badge("A"),
    raci-badge("R"),
    [],
    raci-badge("R"),
    [],
    raci-badge("C"),

    [Évaluer les risques],
    raci-badge("I"),
    raci-badge("A/R"),
    raci-badge("C"),
    [],
    [],
    raci-badge("C"),
    raci-badge("C"),

    [Définir l'appétence au risque],
    raci-badge("A"),
    raci-badge("C"),
    raci-badge("C"),
    raci-badge("C"),
    [],
    [],
    raci-badge("C"),

    [Valider la cartographie],
    raci-badge("A"),
    raci-badge("R"),
    raci-badge("C"),
    [],
    [],
    raci-badge("C"),
    raci-badge("I"),

    [Définir plans de traitement],
    raci-badge("C"),
    raci-badge("A"),
    raci-badge("R"),
    [],
    raci-badge("R"),
    [],
    raci-badge("C"),

    [Suivre la mise en œuvre],
    raci-badge("I"),
    raci-badge("A/R"),
    raci-badge("C"),
    [],
    raci-badge("R"),
    [],
    raci-badge("R"),
  )
]

#pagebreak()

== RACI Gestion des incidents

#block(
  stroke: 1pt + novatics-gray-line,
  radius: 6pt,
  clip: true,
  width: 100%,
)[
  #set text(size: 7.5pt)
  #table(
    columns: (30%, 10%, 10%, 10%, 10%, 10%, 10%, 10%),
    stroke: 0.5pt + novatics-gray-line,
    inset: 5pt,
    fill: (_, row) => if row == 0 { novatics-petrol } else { none },
    align: (left, center, center, center, center, center, center, center),
    text(fill: white, weight: "bold")[Activité],
    text(fill: white, weight: "bold")[CISO],
    text(fill: white, weight: "bold")[DSI],
    text(fill: white, weight: "bold")[CTO],
    text(fill: white, weight: "bold")[COO],
    text(fill: white, weight: "bold")[CHRO],
    text(fill: white, weight: "bold")[DPO],
    text(fill: white, weight: "bold")[CEO],

    [Détecter les alertes], raci-badge("I"), raci-badge("R"), raci-badge("C"), [], [], [], [],
    [Qualifier la sévérité],
    raci-badge("A"),
    raci-badge("R"),
    raci-badge("C"),
    raci-badge("C"),
    [],
    raci-badge("C"),
    [],

    [Activer cellule de crise],
    raci-badge("A/R"),
    raci-badge("C"),
    raci-badge("C"),
    raci-badge("C"),
    [],
    [],
    raci-badge("I"),

    [Isoler systèmes compromis], raci-badge("A"), raci-badge("R"), raci-badge("R"), raci-badge("I"), [], [], [],
    [Collecter preuves (forensics)], raci-badge("A"), raci-badge("C"), raci-badge("R"), [], [], raci-badge("C"), [],
    [Éradiquer la menace], raci-badge("A"), raci-badge("R"), raci-badge("R"), raci-badge("I"), [], [], [],
    [Restaurer les systèmes], raci-badge("C"), raci-badge("A/R"), raci-badge("C"), raci-badge("C"), [], [], [],
    [Communiquer en interne],
    raci-badge("A"),
    raci-badge("C"),
    raci-badge("C"),
    [],
    raci-badge("R"),
    [],
    raci-badge("I"),

    [Notifier autorités], raci-badge("A"), [], raci-badge("C"), [], [], raci-badge("R"), raci-badge("I"),
    [Réaliser le RETEX], raci-badge("A/R"), raci-badge("R"), raci-badge("R"), raci-badge("C"), [], raci-badge("C"), [],
  )
]

#v(1em)

== RACI Conformité

#block(
  stroke: 1pt + novatics-gray-line,
  radius: 6pt,
  clip: true,
  width: 100%,
)[
  #set text(size: 7.5pt)
  #table(
    columns: (40%, 10%, 10%, 10%, 10%, 10%, 10%),
    stroke: 0.5pt + novatics-gray-line,
    inset: 6pt,
    fill: (_, row) => if row == 0 { novatics-petrol } else { none },
    align: (left, center, center, center, center, center, center),
    text(fill: white, weight: "bold")[Activité],
    text(fill: white, weight: "bold")[CEO],
    text(fill: white, weight: "bold")[CISO],
    text(fill: white, weight: "bold")[DPO],
    text(fill: white, weight: "bold")[CFO],
    text(fill: white, weight: "bold")[DSI],
    text(fill: white, weight: "bold")[RMET],

    [Identifier les exigences applicables],
    raci-badge("C"),
    raci-badge("A/R"),
    raci-badge("R"),
    [],
    [],
    raci-badge("C"),

    [Évaluer la conformité (gap analysis)],
    raci-badge("C"),
    raci-badge("A/R"),
    raci-badge("R"),
    [],
    raci-badge("R"),
    raci-badge("C"),

    [Définir le plan de mise en conformité],
    raci-badge("A"),
    raci-badge("R"),
    raci-badge("R"),
    [],
    raci-badge("R"),
    raci-badge("C"),

    [Allouer les ressources conformité], raci-badge("A"), raci-badge("C"), [], raci-badge("R"), raci-badge("C"), [],
    [Mettre en œuvre les actions],
    raci-badge("I"),
    raci-badge("A"),
    raci-badge("R"),
    [],
    raci-badge("R"),
    raci-badge("R"),

    [Documenter les preuves de conformité],
    raci-badge("I"),
    raci-badge("A"),
    raci-badge("R"),
    [],
    raci-badge("R"),
    raci-badge("R"),

    [Préparer les audits externes], raci-badge("C"), raci-badge("A/R"), raci-badge("R"), [], raci-badge("R"), [],
    [Gérer les non-conformités],
    raci-badge("A"),
    raci-badge("R"),
    raci-badge("R"),
    [],
    raci-badge("R"),
    raci-badge("C"),
  )
]

#pagebreak()

// =============================================================================
// CHAPITRE 7 : FOCUS NIS2
// =============================================================================

= Focus conformité NIS2

== Exigences de gouvernance Article 20

La directive NIS2 impose des obligations spécifiques aux organes de direction des entités essentielles et importantes.

#callout(title: "Responsabilité des dirigeants (NIS2 Art. 20)", type: "warning")[
  Les membres du COMEX peuvent être tenus personnellement responsables en cas de manquement aux obligations de cybersécurité. La formation des dirigeants est obligatoire.
]

#block(
  stroke: 1pt + novatics-gray-line,
  radius: 6pt,
  clip: true,
  width: 100%,
)[
  #set text(size: 7.5pt)
  #table(
    columns: (40%, 10%, 10%, 10%, 10%, 10%, 10%),
    stroke: 0.5pt + novatics-gray-line,
    inset: 6pt,
    fill: (_, row) => if row == 0 { novatics-petrol } else { none },
    align: (left, center, center, center, center, center, center),
    text(fill: white, weight: "bold")[Activité],
    text(fill: white, weight: "bold")[CEO],
    text(fill: white, weight: "bold")[CISO],
    text(fill: white, weight: "bold")[DSI],
    text(fill: white, weight: "bold")[DPO],
    text(fill: white, weight: "bold")[CHRO],
    text(fill: white, weight: "bold")[RMET],

    [Déterminer le statut NIS2 (EE/EI)], raci-badge("A"), raci-badge("R"), [], raci-badge("C"), [], [],
    [Enregistrer l'entité auprès de l'ANSSI], raci-badge("A"), raci-badge("R"), [], [], [], [],
    [Mettre en œuvre les mesures Article 21],
    raci-badge("C"),
    raci-badge("A/R"),
    raci-badge("R"),
    [],
    [],
    raci-badge("C"),

    [Former les dirigeants aux enjeux cyber], raci-badge("A/R"), raci-badge("R"), [], [], raci-badge("R"), [],
    [Définir la procédure de notification], raci-badge("A"), raci-badge("R"), [], raci-badge("R"), [], [],
    [Superviser les fournisseurs critiques], raci-badge("C"), raci-badge("A"), raci-badge("R"), [], [], raci-badge("R"),
    [Préparer les contrôles de l'autorité],
    raci-badge("C"),
    raci-badge("A/R"),
    raci-badge("R"),
    raci-badge("R"),
    [],
    [],
  )
]

#pagebreak()

// =============================================================================
// ANNEXE A : CONTACTS ÉQUIPE SSI
// =============================================================================

= Annexe A : Contacts de l'équipe SSI

#block(
  stroke: 1pt + novatics-gray-line,
  radius: 6pt,
  clip: true,
  width: 100%,
)[
  #set text(size: 9pt)
  #table(
    columns: (25%, 30%, 45%),
    stroke: 0.5pt + novatics-gray-line,
    inset: 8pt,
    fill: (_, row) => if row == 0 { novatics-petrol } else { none },
    align: (left, left, left),
    text(fill: white, weight: "bold")[Nom],
    text(fill: white, weight: "bold")[Poste],
    text(fill: white, weight: "bold")[Contact],

    [Mei Lin ZHAO], [CISO], [meilin.zhao\@novatics.io],
    [Lucas BERNARD], [Security Engineer], [lucas.bernard\@novatics.io],
    [Amira HASSAN], [Security Engineer], [amira.hassan\@novatics.io],
    [Pierre DUVAL], [DevSecOps Engineer], [pierre.duval\@novatics.io],
    [Marie LEFEVRE], [GRC Analyst], [marie.lefevre\@novatics.io],
    [Julien PETIT], [OT Security Specialist], [julien.petit\@novatics.io],
  )
]

#v(1em)

#callout(title: "Contact d'urgence sécurité", type: "critical")[
  En cas d'incident de sécurité, contacter immédiatement : \
  *Email :* security\@novatics.io \
  *Téléphone :* +33 5 61 XX XX XX (astreinte 24/7)
]


#pagebreak()

// =============================================================================
// ANNEXE B : ANNUAIRE PAR DÉPARTEMENT
// =============================================================================

= Annexe B : Annuaire de l'organisation

Effectif total : *85 collaborateurs* répartis en 10 départements + Direction Générale.

_Note : Le COMEX (9 membres) est transverse ; ses membres dirigent leurs départements respectifs._

== Direction Générale (1 personne)

#block(
  stroke: 1pt + novatics-gray-line,
  radius: 6pt,
  clip: true,
  width: 100%,
)[
  #set text(size: 9pt)
  #table(
    columns: (30%, 40%, 30%),
    stroke: 0.5pt + novatics-gray-line,
    inset: 8pt,
    fill: (_, row) => if row == 0 { novatics-petrol } else { none },
    align: (left, left, left),
    text(fill: white, weight: "bold")[Nom],
    text(fill: white, weight: "bold")[Fonction],
    text(fill: white, weight: "bold")[Site],

    [*Alexandre DUBOIS*], [CEO & Fondateur], [Toulouse],
  )
]

== R&D / Engineering (28 personnes)

Dirigé par *Dr. Lena ROSTOVA* (CTO, membre COMEX)

#block(
  stroke: 1pt + novatics-gray-line,
  radius: 6pt,
  clip: true,
  width: 100%,
)[
  #set text(size: 8pt)
  #table(
    columns: (28%, 40%, 32%),
    stroke: 0.5pt + novatics-gray-line,
    inset: 6pt,
    fill: (_, row) => if row == 0 { novatics-petrol } else { none },
    align: (left, left, left),
    text(fill: white, weight: "bold")[Nom],
    text(fill: white, weight: "bold")[Fonction],
    text(fill: white, weight: "bold")[Équipe],

    [*Dr. Lena ROSTOVA*], [CTO], [Direction R&D],
    [Antoine MOREAU], [Lead Firmware Engineer], [Embedded],
    [Clément ROUX], [Senior Embedded Developer], [Embedded],
    [Maxime LAMBERT], [Embedded Developer], [Embedded],
    [Hugo FERREIRA], [Embedded Developer], [Embedded],
    [Dr. Sarah COHEN], [Lead AI/ML Engineer], [AI/Vision],
    [Benjamin FAURE], [Senior ML Engineer], [AI/Vision],
    [Émilie GIRARD], [ML Engineer], [AI/Vision],
    [Nicolas PERRIN], [Data Scientist], [AI/Vision],
    [Mathieu LEROY], [Lead Backend Developer], [Cloud/NCC],
    [Romain FOURNIER], [Senior Backend Developer], [Cloud/NCC],
    [Cyril MOREL], [Backend Developer], [Cloud/NCC],
    [Théo VINCENT], [Frontend Developer], [Cloud/NCC],
    [Sébastien BLANC], [Lead NCC Developer], [Software],
    [Laura PETIT], [Senior NCC Developer], [Software],
    [Florian ANDRE], [NCC Developer], [Software],
    [Dr. Marc DUPONT], [Senior Robotics Engineer], [Hardware],
    [Vincent GARNIER], [Robotics Engineer], [Hardware],
    [Éric JOUBERT], [Robotics Researcher], [Hardware],
    [Pauline MEYER], [Senior Hardware Engineer], [Hardware],
    [Jérôme SIMON], [Hardware Engineer], [Hardware],
    [*Dr. Isabelle FOURNIER*], [Architecte Hardware], [Hardware / N-RECON],
    [*Julie ARNAUD*], [Lead Software NCC-Défense], [Software / N-RECON],
    [*Thomas MERCIER*], [Chef de Projet N-RECON], [Project Management],
    [Laurent PAGES], [Hardware Engineer], [Hardware],
    [David MARTINEZ], [Senior Test Engineer], [QA],
    [Aurélie BONNET], [Test Engineer], [QA],
    [Christophe HENRY], [Test Engineer], [QA],
  )
]

#pagebreak()

== Production / Supply Chain (18 personnes - Site Chambéry)

Dirigé par *Marco ROSSI* (COO, membre COMEX - split Toulouse/Chambéry)

#block(
  stroke: 1pt + novatics-gray-line,
  radius: 6pt,
  clip: true,
  width: 100%,
)[
  #set text(size: 8pt)
  #table(
    columns: (28%, 42%, 30%),
    stroke: 0.5pt + novatics-gray-line,
    inset: 6pt,
    fill: (_, row) => if row == 0 { novatics-petrol } else { none },
    align: (left, left, left),
    text(fill: white, weight: "bold")[Nom],
    text(fill: white, weight: "bold")[Fonction],
    text(fill: white, weight: "bold")[Équipe],

    [*Marco ROSSI*], [COO], [Direction Production],
    [François LEMAIRE], [Production Manager], [Management],
    [Jean-Pierre DUMONT], [Chef d'équipe Assemblage], [Assemblage],
    [Michel GIRAUD], [Technicien Assemblage], [Assemblage],
    [Patrick MORIN], [Technicien Assemblage], [Assemblage],
    [Stéphane ROGER], [Technicien Assemblage], [Assemblage],
    [Bruno LEGRAND], [Technicien Assemblage], [Assemblage],
    [Frédéric BOULANGER], [Technicien Assemblage], [Assemblage],
    [Éric FONTAINE], [Technicien Assemblage], [Assemblage],
    [Olivier CHEVALIER], [Technicien Assemblage], [Assemblage],
    [Sandrine MASSON], [Technicienne Assemblage], [Assemblage],
    [Yves CLEMENT], [Technicien Assemblage], [Assemblage],
    [Nathalie ROUSSEAU], [Responsable QA Usine], [Qualité],
    [Philippe MARCHAND], [Technicien QA], [Qualité],
    [Alain RENARD], [Technicien QA], [Qualité],
    [Catherine PICARD], [Technicienne QA], [Qualité],
    [Gérard MULLER], [Responsable Logistique], [Logistique],
    [Daniel LEFEBVRE], [Agent Logistique], [Logistique],
  )
]

== Sales & Marketing (9 personnes)

Dirigé par *Sarah AL-FAYED* (CCO, membre COMEX)

#block(
  stroke: 1pt + novatics-gray-line,
  radius: 6pt,
  clip: true,
  width: 100%,
)[
  #set text(size: 8pt)
  #table(
    columns: (28%, 40%, 32%),
    stroke: 0.5pt + novatics-gray-line,
    inset: 6pt,
    fill: (_, row) => if row == 0 { novatics-petrol } else { none },
    align: (left, left, left),
    text(fill: white, weight: "bold")[Nom],
    text(fill: white, weight: "bold")[Fonction],
    text(fill: white, weight: "bold")[Site],

    [*Sarah AL-FAYED*], [CCO], [Toulouse / International],
    [Hiroshi YAMAMOTO], [Sales Engineer APAC], [Tokyo],
    [Akiko TANAKA], [Sales Engineer Japan], [Tokyo],
    [Michael JOHNSON], [Sales Engineer Americas], [San Francisco],
    [James WILSON], [Sales Engineer USA], [San Francisco],
    [Carlos MENDOZA], [Sales Manager LATAM], [Lima],
    [Céline ROUSSEL], [Account Manager EMEA], [Toulouse],
    [Margaux LAURENT], [Marketing Manager], [Toulouse],
    [Thibault LECLAIR], [Marketing Specialist], [Toulouse],
  )
]

#pagebreak()

== Finance & Administration (8 personnes)

Dirigé par *Claire DELACROIX* (CFO, membre COMEX)

#block(
  stroke: 1pt + novatics-gray-line,
  radius: 6pt,
  clip: true,
  width: 100%,
)[
  #set text(size: 8pt)
  #table(
    columns: (28%, 45%, 27%),
    stroke: 0.5pt + novatics-gray-line,
    inset: 6pt,
    fill: (_, row) => if row == 0 { novatics-petrol } else { none },
    align: (left, left, left),
    text(fill: white, weight: "bold")[Nom],
    text(fill: white, weight: "bold")[Fonction],
    text(fill: white, weight: "bold")[Site],

    [*Claire DELACROIX*], [CFO], [Toulouse],
    [Anne DUVAL], [Comptable Senior], [Toulouse],
    [Marc PRIGENT], [Comptable], [Toulouse],
    [Hélène RODRIGUEZ], [Contrôleur de Gestion], [Toulouse],
    [Sophie MARTIN], [Grant Manager (Subventions)], [Toulouse],
    [Isabelle CHEN], [Office Manager], [Toulouse],
    [Jonathan RIVIERE], [Assistant Administratif], [Toulouse],
    [Émeline BARBIER], [Assistante Administrative], [Toulouse],
  )
]

== IT & Cybersecurity (6 personnes)

Dirigé par *Mei Lin ZHAO* (CISO, membre COMEX)

#block(
  stroke: 1pt + novatics-gray-line,
  radius: 6pt,
  clip: true,
  width: 100%,
)[
  #set text(size: 8pt)
  #table(
    columns: (28%, 45%, 27%),
    stroke: 0.5pt + novatics-gray-line,
    inset: 6pt,
    fill: (_, row) => if row == 0 { novatics-petrol } else { none },
    align: (left, left, left),
    text(fill: white, weight: "bold")[Nom],
    text(fill: white, weight: "bold")[Fonction],
    text(fill: white, weight: "bold")[Pôle],

    [*Mei Lin ZHAO*], [CISO], [Direction SSI],
    [Lucas BERNARD], [Security Engineer], [Opérations / SOC],
    [Amira HASSAN], [Security Engineer], [Opérations / SOC],
    [Pierre DUVAL], [DevSecOps Engineer], [Sécurité R&D],
    [Marie LEFEVRE], [GRC Analyst], [Gouvernance / Conformité],
    [Julien PETIT], [OT Security Specialist], [Sécurité OT (Chambéry)],
  )
]

== Legal & Compliance (2 personnes)

Dirigé par *Béatrice MOREAU* (Head of Legal, membre COMEX)

#block(
  stroke: 1pt + novatics-gray-line,
  radius: 6pt,
  clip: true,
  width: 100%,
)[
  #set text(size: 8pt)
  #table(
    columns: (28%, 45%, 27%),
    stroke: 0.5pt + novatics-gray-line,
    inset: 6pt,
    fill: (_, row) => if row == 0 { novatics-petrol } else { none },
    align: (left, left, left),
    text(fill: white, weight: "bold")[Nom],
    text(fill: white, weight: "bold")[Fonction],
    text(fill: white, weight: "bold")[Site],

    [*Béatrice MOREAU*], [Head of Legal], [Toulouse],
    [Xavier MARTIN], [IP Specialist], [Toulouse],
  )
]

#pagebreak()

== HR & Recruitment (3 personnes)

Dirigé par *David CHEN* (HR Director, membre COMEX)

#block(
  stroke: 1pt + novatics-gray-line,
  radius: 6pt,
  clip: true,
  width: 100%,
)[
  #set text(size: 8pt)
  #table(
    columns: (28%, 45%, 27%),
    stroke: 0.5pt + novatics-gray-line,
    inset: 6pt,
    fill: (_, row) => if row == 0 { novatics-petrol } else { none },
    align: (left, left, left),
    text(fill: white, weight: "bold")[Nom],
    text(fill: white, weight: "bold")[Fonction],
    text(fill: white, weight: "bold")[Site],

    [*David CHEN*], [HR Director], [Toulouse],
    [Camille GIRARD], [Talent Acquisition Specialist], [Toulouse],
    [Kevin NGUYEN], [HR Assistant], [Toulouse],
  )
]

== Strategy & Business Development (2 personnes)

Dirigé par *Marc TIBERI* (CSO, membre COMEX)

#block(
  stroke: 1pt + novatics-gray-line,
  radius: 6pt,
  clip: true,
  width: 100%,
)[
  #set text(size: 8pt)
  #table(
    columns: (28%, 45%, 27%),
    stroke: 0.5pt + novatics-gray-line,
    inset: 6pt,
    fill: (_, row) => if row == 0 { novatics-petrol } else { none },
    align: (left, left, left),
    text(fill: white, weight: "bold")[Nom],
    text(fill: white, weight: "bold")[Fonction],
    text(fill: white, weight: "bold")[Site],

    [*Marc TIBERI*], [CSO], [Toulouse],
    [Nadia BENALI], [Business Analyst], [Toulouse],
  )
]

== Customer Success (5 personnes)

#block(
  stroke: 1pt + novatics-gray-line,
  radius: 6pt,
  clip: true,
  width: 100%,
)[
  #set text(size: 8pt)
  #table(
    columns: (28%, 45%, 27%),
    stroke: 0.5pt + novatics-gray-line,
    inset: 6pt,
    fill: (_, row) => if row == 0 { novatics-petrol } else { none },
    align: (left, left, left),
    text(fill: white, weight: "bold")[Nom],
    text(fill: white, weight: "bold")[Fonction],
    text(fill: white, weight: "bold")[Site],

    [Raphaël COSTA], [Head of Customer Success], [Toulouse],
    [Romain LECONTE], [Field Support Engineer], [Toulouse],
    [Nicolas FERREIRA], [Field Support Engineer], [Toulouse],
    [Amélie FERNANDEZ], [Technical Support], [Toulouse],
    [Sandra MULLER], [Technical Support], [Toulouse],
  )
]

#pagebreak()

// =============================================================================
// ANNEXE C : SYNTHÈSE DES EFFECTIFS
// =============================================================================

= Annexe C : Synthèse des effectifs

== Répartition par département

#block(
  stroke: 1pt + novatics-gray-line,
  radius: 6pt,
  clip: true,
  width: 100%,
)[
  #set text(size: 9pt)
  #table(
    columns: (45%, 15%, 40%),
    stroke: 0.5pt + novatics-gray-line,
    inset: 8pt,
    fill: (_, row) => if row == 0 { novatics-petrol } else if row == 11 { novatics-gray-light } else { none },
    align: (left, center, left),
    text(fill: white, weight: "bold")[Département],
    text(fill: white, weight: "bold")[Effectif],
    text(fill: white, weight: "bold")[Responsable (COMEX)],

    [Direction Générale], [1], [Alexandre DUBOIS (CEO)],
    [R&D / Engineering], [28], [Dr. Lena ROSTOVA (CTO)],
    [Production / Supply Chain], [18], [Marco ROSSI (COO)],
    [Sales & Marketing], [9], [Sarah AL-FAYED (CCO)],
    [Finance & Administration], [8], [Claire DELACROIX (CFO)],
    [IT & Cybersecurity], [6], [Mei Lin ZHAO (CISO)],
    [Legal & Compliance], [2], [Béatrice MOREAU],
    [HR & Recruitment], [3], [David CHEN],
    [Strategy & BD], [2], [Marc TIBERI (CSO)],
    [Customer Success], [5], [--],
    text(weight: "bold")[*TOTAL PERMANENTS*], text(weight: "bold")[*82*], [],
  )
]

_Note : 3 postes en cours de recrutement (objectif 85). Freelancers non inclus (12 missions actives)._

== Répartition par site

#block(
  stroke: 1pt + novatics-gray-line,
  radius: 6pt,
  clip: true,
  width: 100%,
)[
  #set text(size: 9pt)
  #table(
    columns: (35%, 15%, 50%),
    stroke: 0.5pt + novatics-gray-line,
    inset: 8pt,
    fill: (_, row) => if row == 0 { novatics-petrol } else { none },
    align: (left, center, left),
    text(fill: white, weight: "bold")[Site],
    text(fill: white, weight: "bold")[Effectif],
    text(fill: white, weight: "bold")[Départements présents],

    [Toulouse (Siège / R&D)], [62], [Direction, R&D, IT, Finance, Legal, HR, Strategy, CS],
    [Chambéry (Usine)], [18], [Production / Supply Chain],
    [Tokyo], [2], [Sales & Marketing (APAC)],
    [San Francisco], [2], [Sales & Marketing (Americas)],
    [Lima], [1], [Sales & Marketing (LATAM)],
  )
]

== Composition du COMEX

#block(
  stroke: 1pt + novatics-gray-line,
  radius: 6pt,
  clip: true,
  width: 100%,
)[
  #set text(size: 9pt)
  #table(
    columns: (30%, 25%, 45%),
    stroke: 0.5pt + novatics-gray-line,
    inset: 8pt,
    fill: (_, row) => if row == 0 { novatics-petrol } else { none },
    align: (left, left, left),
    text(fill: white, weight: "bold")[Membre],
    text(fill: white, weight: "bold")[Fonction],
    text(fill: white, weight: "bold")[Périmètre],

    [Alexandre DUBOIS], [CEO], [Direction Générale, Stratégie, Représentation],
    [Dr. Lena ROSTOVA], [CTO], [R&D, Architecture technique, Innovation],
    [Marco ROSSI], [COO], [Production, Supply Chain, Qualité],
    [Claire DELACROIX], [CFO], [Finance, Administration, Levées de fonds],
    [Sarah AL-FAYED], [CCO], [Commercial, Marketing, Partenariats],
    [Mei Lin ZHAO], [CISO], [Cybersécurité, IT, Conformité],
    [Marc TIBERI], [CSO], [Stratégie, Business Development],
    [Béatrice MOREAU], [Head of Legal], [Juridique, PI, Compliance],
    [David CHEN], [HR Director], [RH, Recrutement, Formation],
  )
]
