// =============================================================================
// NOVATICS - B1-A1-C1-04 : Schéma fonctionnel des processus métiers
// Document SSI - TLP:AMBER
// =============================================================================

#import "/docs/templates/novatics-template.typ": *

#show: novatics-doc.with(
  title: "Schéma fonctionnel des processus métiers",
  subtitle: "Cartographie des activités critiques et dépendances SI",
  doc-category: "Analyse SSI",
  reference: "NOV-SSI-2025-004",
  version: "1.0",
  date: datetime(year: 2025, month: 11, day: 28),
  author: "Mei Lin ZHAO, CISO",
  tlp: "AMBER",
  logo-path: "/docs/assets/pictures/logo/novatics-full-logo.png",
  landscape: true,
)

// =============================================================================
// PRÉAMBULE
// =============================================================================

#version-history(
  (version: "1.0", date: "28/11/2025", changes: "Création initiale", author: "Mei Lin ZHAO"),
)

#v(1em)

#approval-table((
  (role: "Rédacteur", name: "Mei Lin ZHAO", date: "26/11/2025"),
  (role: "Vérificateur", name: "Dr. Lena ROSTOVA", date: "27/11/2025"),
  (role: "Approbateur", name: "Alexandre DUBOIS", date: "28/11/2025"),
))

#pagebreak()

#custom-outline()

#pagebreak()

// =============================================================================
// CHAPITRE 1 : OBJET ET PÉRIMÈTRE
// =============================================================================

= Objet et périmètre

== Objectif du document

Ce document établit la cartographie fonctionnelle des processus métiers de Novatics et identifie leurs dépendances vis-à-vis du système d'information. Cette analyse constitue un prérequis indispensable pour l'analyse de risques (EBIOS RM) et la définition des plans de continuité d'activité (PCA/PRA).

L'objectif est triple : identifier les processus critiques pour la mission de l'organisation, comprendre les interdépendances entre processus et systèmes d'information, et déterminer les besoins en disponibilité, intégrité et confidentialité pour chaque processus.

== Périmètre

Le périmètre couvre l'ensemble des processus métiers de Novatics SAS, répartis sur les cinq sites opérationnels : le siège R&D de Toulouse (62 collaborateurs), l'usine de production de Chambéry (18 collaborateurs), et les bureaux commerciaux de Tokyo, San Francisco et Lima (5 collaborateurs au total).

Les processus externalisés (sous-traitance) et les interactions avec les partenaires stratégiques (Airbus D&S, Thales, ONU OCHA) sont également inclus dans l'analyse.

== Documents de référence

Ce document s'inscrit dans la continuité des livrables SSI précédents :

#metadata-table(
  ("NOV-SSI-2025-001", "Fiche d'identité SSI de Novatics"),
  ("NOV-SSI-2025-002", "Organigramme et gouvernance SSI"),
  ("NOV-SSI-2025-003", "Registre des parties prenantes SSI"),
)

#pagebreak()

// =============================================================================
// CHAPITRE 2 : VUE D'ENSEMBLE DES PROCESSUS
// =============================================================================

= Vue d'ensemble des processus métiers

== Classification des processus

Les processus de Novatics sont organisés en trois catégories selon leur contribution à la chaîne de valeur.

Les *processus cœur de métier* constituent l'activité principale de l'entreprise et sont directement liés à la mission de sauvetage. Leur interruption aurait un impact immédiat sur la capacité opérationnelle de Novatics et sur la sécurité des personnes lors des missions de secours.

Les *processus support* assurent le fonctionnement quotidien de l'organisation. Bien qu'ils ne génèrent pas directement de valeur pour les clients, leur défaillance paralyserait progressivement les processus cœur de métier.

Les *processus de pilotage* garantissent la gouvernance, la conformité et l'orientation stratégique de l'entreprise. Leur dysfonctionnement compromettrait la pérennité à moyen terme de l'organisation.

== Cartographie synthétique

La figure ci-dessous présente la vue d'ensemble des processus métiers et leurs interactions.

#figure(
  image("/docs/assets/schemas/B1-A1-C1-04-processus-metiers-overview.png", width: 100%),
  caption: [Vue d'ensemble des processus métiers de Novatics],
)

#pagebreak()

== Inventaire des processus

#block(
  stroke: 1pt + novatics-gray-line,
  radius: 6pt,
  clip: true,
  width: 100%,
)[
  #set text(size: 8pt)
  #table(
    columns: (8%, 25%, 40%, 12%, 15%),
    stroke: 0.5pt + novatics-gray-line,
    inset: 6pt,
    fill: (_, row) => if row == 0 { novatics-petrol } else { none },
    align: (center, left, left, center, center),
    text(fill: white, weight: "bold")[ID],
    text(fill: white, weight: "bold")[Processus],
    text(fill: white, weight: "bold")[Description],
    text(fill: white, weight: "bold")[Propriétaire],
    text(fill: white, weight: "bold")[Criticité],

    // Processus cœur de métier
    [P01],
    [R&D et Conception],
    [Développement des robots, algorithmes IA/SLAM, firmware embarqué],
    [CTO],
    [#box(fill: color-critical, inset: 3pt, radius: 3pt, text(fill: white, size: 7pt, weight: "bold")[CRITIQUE])],

    [P02],
    [Production et Assemblage],
    [Fabrication des robots N-Eye, N-Seeker, N-Sonar à Chambéry],
    [COO],
    [#box(fill: color-critical, inset: 3pt, radius: 3pt, text(fill: white, size: 7pt, weight: "bold")[CRITIQUE])],

    [P03],
    [Déploiement Missions],
    [Interventions terrain lors de catastrophes, support opérationnel],
    [COO],
    [#box(fill: color-critical, inset: 3pt, radius: 3pt, text(fill: white, size: 7pt, weight: "bold")[CRITIQUE])],

    [P04],
    [Support Client],
    [Assistance technique, maintenance, formation opérateurs],
    [Head CS],
    [#box(fill: color-high, inset: 3pt, radius: 3pt, text(fill: white, size: 7pt, weight: "bold")[ÉLEVÉ])],

    // Processus support
    [P05],
    [Commercial et Ventes],
    [Prospection B2G/ONG/B2B, négociation contrats, appels d'offres],
    [CCO],
    [#box(fill: color-high, inset: 3pt, radius: 3pt, text(fill: white, size: 7pt, weight: "bold")[ÉLEVÉ])],

    [P06],
    [Supply Chain],
    [Approvisionnement composants, gestion stocks, logistique],
    [COO],
    [#box(fill: color-high, inset: 3pt, radius: 3pt, text(fill: white, size: 7pt, weight: "bold")[ÉLEVÉ])],

    [P07],
    [Finance et Comptabilité],
    [Facturation, trésorerie, reporting financier, subventions],
    [CFO],
    [#box(fill: color-medium, inset: 3pt, radius: 3pt, text(fill: black, size: 7pt, weight: "bold")[MODÉRÉ])],

    [P08],
    [Ressources Humaines],
    [Recrutement, paie, formation, gestion des talents],
    [HR Dir.],
    [#box(fill: color-medium, inset: 3pt, radius: 3pt, text(fill: black, size: 7pt, weight: "bold")[MODÉRÉ])],

    // Processus de pilotage
    [P09],
    [Pilotage Stratégique],
    [Vision, M&A, partenariats stratégiques, levées de fonds],
    [CEO/CSO],
    [#box(fill: color-high, inset: 3pt, radius: 3pt, text(fill: white, size: 7pt, weight: "bold")[ÉLEVÉ])],

    [P10],
    [Conformité et Juridique],
    [Propriété intellectuelle, contrats, export control, RGPD],
    [Legal],
    [#box(fill: color-high, inset: 3pt, radius: 3pt, text(fill: white, size: 7pt, weight: "bold")[ÉLEVÉ])],

    [P11],
    [Sécurité SI],
    [Protection du SI, conformité NIS2, homologation DGA],
    [CISO],
    [#box(fill: color-critical, inset: 3pt, radius: 3pt, text(fill: white, size: 7pt, weight: "bold")[CRITIQUE])],
  )
]

#pagebreak()

// =============================================================================
// CHAPITRE 3 : PROCESSUS CŒUR DE MÉTIER
// =============================================================================

= Processus cœur de métier

== P01 - R&D et Conception

=== Description fonctionnelle

Le processus R&D constitue le cœur de l'innovation de Novatics. Il couvre le développement des algorithmes de navigation autonome (SLAM), des modèles d'intelligence artificielle pour la détection de victimes, du firmware embarqué dans les robots, et du logiciel de contrôle NCC (Novatics Command Center).

Ce processus implique 28 personnes réparties entre ingénieurs logiciel (12), ingénieurs hardware (8), chercheurs en robotique (4) et ingénieurs de test (3), tous basés à Toulouse sous la direction du Dr. Lena ROSTOVA (CTO).

=== Activités principales

Le développement logiciel comprend la conception des algorithmes SLAM et de l'IA de détection, le développement du firmware embarqué (C/C++ sur NVIDIA Jetson), la création de l'application NCC (React/Python), et l'intégration continue via GitLab CI/CD.

Le développement hardware inclut la conception des cartes électroniques, le prototypage mécanique, et les tests environnementaux (chambre climatique).

La validation couvre les tests unitaires et d'intégration, les simulations de mission, et la qualification finale avant transfert en production.

=== Dépendances SI

#block(
  stroke: 1pt + novatics-gray-line,
  radius: 6pt,
  clip: true,
  width: 100%,
)[
  #set text(size: 8pt)
  #table(
    columns: (20%, 20%, 35%, 25%),
    stroke: 0.5pt + novatics-gray-line,
    inset: 6pt,
    fill: (_, row) => if row == 0 { rgb("#7C5F8B") } else { none },
    align: (left, left, left, center),
    text(fill: white, weight: "bold")[Application],
    text(fill: white, weight: "bold")[Zone SI],
    text(fill: white, weight: "bold")[Usage],
    text(fill: white, weight: "bold")[Criticité],

    [GitLab], [R&D], [Versioning code, CI/CD, revue de code], [CRITIQUE],
    [SonarQube], [R&D], [Analyse qualité et sécurité du code], [ÉLEVÉ],
    [Jupyter Hub], [R&D], [Notebooks IA, entraînement modèles], [ÉLEVÉ],
    [MinIO], [R&D], [Stockage datasets, modèles entraînés], [CRITIQUE],
    [PostgreSQL], [R&D], [Base de données métier NCC], [CRITIQUE],
    [Nextcloud], [IT], [Documentation technique, spécifications], [MODÉRÉ],
    [Keycloak], [Transverse], [Authentification développeurs], [CRITIQUE],
  )
]

=== Besoins DICT

#grid(
  columns: (1fr, 1fr, 1fr, 1fr),
  gutter: 10pt,
  [
    #align(center)[
      #text(weight: "bold", size: 9pt)[Disponibilité]
      #v(4pt)
      #box(fill: color-high, inset: 6pt, radius: 4pt)[
        #text(fill: white, weight: "bold")[ÉLEVÉ]
      ]
      #v(4pt)
      #text(size: 8pt)[RTO : 24h]
    ]
  ],
  [
    #align(center)[
      #text(weight: "bold", size: 9pt)[Intégrité]
      #v(4pt)
      #box(fill: color-critical, inset: 6pt, radius: 4pt)[
        #text(fill: white, weight: "bold")[CRITIQUE]
      ]
      #v(4pt)
      #text(size: 8pt)[Code source = PI]
    ]
  ],
  [
    #align(center)[
      #text(weight: "bold", size: 9pt)[Confidentialité]
      #v(4pt)
      #box(fill: color-critical, inset: 6pt, radius: 4pt)[
        #text(fill: white, weight: "bold")[CRITIQUE]
      ]
      #v(4pt)
      #text(size: 8pt)[Brevets, SLAM]
    ]
  ],
  [
    #align(center)[
      #text(weight: "bold", size: 9pt)[Traçabilité]
      #v(4pt)
      #box(fill: color-high, inset: 6pt, radius: 4pt)[
        #text(fill: white, weight: "bold")[ÉLEVÉ]
      ]
      #v(4pt)
      #text(size: 8pt)[Audit DGA]
    ]
  ],
)

#pagebreak()

== P02 - Production et Assemblage

=== Description fonctionnelle

Le processus de production assure la fabrication des robots de la gamme N-Series sur le site de Chambéry. L'usine dispose de deux lignes d'assemblage avec une capacité théorique de 200 robots par an, actuellement utilisée à 80% (160 robots/an : 80 N-Eye, 50 N-Seeker, 30 N-Sonar).

L'équipe de production compte 18 personnes : 1 responsable production, 10 techniciens d'assemblage, 4 contrôleurs qualité, et 2 logisticiens, sous la supervision de Marco ROSSI (COO).

=== Activités principales

La réception et le contrôle qualité entrant vérifient les composants livrés par les fournisseurs (NVIDIA, Intel, Thales). L'assemblage se déroule sur les lignes dédiées avec traçabilité complète de chaque composant. Les tests fonctionnels valident chaque robot avant expédition. L'emballage et l'expédition préparent les livraisons clients avec documentation technique.

=== Dépendances SI

#block(
  stroke: 1pt + novatics-gray-line,
  radius: 6pt,
  clip: true,
  width: 100%,
)[
  #set text(size: 8pt)
  #table(
    columns: (20%, 20%, 35%, 25%),
    stroke: 0.5pt + novatics-gray-line,
    inset: 6pt,
    fill: (_, row) => if row == 0 { rgb("#B85450") } else { none },
    align: (left, left, left, center),
    text(fill: white, weight: "bold")[Application],
    text(fill: white, weight: "bold")[Zone SI],
    text(fill: white, weight: "bold")[Usage],
    text(fill: white, weight: "bold")[Criticité],

    [Odoo Manufacturing], [OT], [Ordres de fabrication, traçabilité], [CRITIQUE],
    [Odoo Inventory], [OT], [Gestion stocks, mouvements], [CRITIQUE],
    [Odoo Quality], [OT], [Contrôle qualité, non-conformités], [ÉLEVÉ],
    [SCADA local], [OT], [Supervision lignes assemblage], [CRITIQUE],
    [Postes dédiés (18)], [OT], [Stations de travail production], [ÉLEVÉ],
    [Réseau OT isolé], [OT], [Infrastructure réseau Chambéry], [CRITIQUE],
  )
]

=== Besoins DICT

#grid(
  columns: (1fr, 1fr, 1fr, 1fr),
  gutter: 10pt,
  [
    #align(center)[
      #text(weight: "bold", size: 9pt)[Disponibilité]
      #v(4pt)
      #box(fill: color-critical, inset: 6pt, radius: 4pt)[
        #text(fill: white, weight: "bold")[CRITIQUE]
      ]
      #v(4pt)
      #text(size: 8pt)[RTO : 4h]
    ]
  ],
  [
    #align(center)[
      #text(weight: "bold", size: 9pt)[Intégrité]
      #v(4pt)
      #box(fill: color-critical, inset: 6pt, radius: 4pt)[
        #text(fill: white, weight: "bold")[CRITIQUE]
      ]
      #v(4pt)
      #text(size: 8pt)[Traçabilité]
    ]
  ],
  [
    #align(center)[
      #text(weight: "bold", size: 9pt)[Confidentialité]
      #v(4pt)
      #box(fill: color-high, inset: 6pt, radius: 4pt)[
        #text(fill: white, weight: "bold")[ÉLEVÉ]
      ]
      #v(4pt)
      #text(size: 8pt)[Process indus.]
    ]
  ],
  [
    #align(center)[
      #text(weight: "bold", size: 9pt)[Traçabilité]
      #v(4pt)
      #box(fill: color-critical, inset: 6pt, radius: 4pt)[
        #text(fill: white, weight: "bold")[CRITIQUE]
      ]
      #v(4pt)
      #text(size: 8pt)[Certification]
    ]
  ],
)

#callout(title: "Spécificité OT", type: "warning")[
  Le réseau de production de Chambéry est physiquement isolé du réseau IT. Les échanges de données (ordres de fabrication, nomenclatures) transitent par une passerelle sécurisée unidirectionnelle. Cette architecture limite les risques de propagation d'attaques IT vers l'OT.
]

#pagebreak()

== P03 - Déploiement Missions

=== Description fonctionnelle

Le processus de déploiement missions est le plus critique de Novatics car il intervient dans des contextes où des vies humaines sont en jeu. Il couvre la préparation, le transport, le déploiement opérationnel et le debriefing des interventions lors de catastrophes naturelles ou industrielles.

Ce processus implique l'équipe Customer Success (5 personnes), des opérateurs terrain formés chez les clients, et potentiellement des renforts R&D pour les missions complexes. Les missions peuvent être déclenchées en moins de 24 heures (alertes humanitaires).

=== Activités principales

La phase d'alerte et de préparation comprend la réception de la demande (client ou ONG), l'évaluation de la situation, la préparation du matériel (robots, batteries, NCC), et la coordination logistique (transport aérien, autorisations).

La phase opérationnelle terrain couvre le déploiement des robots, le contrôle via NCC, la transmission des données en temps réel, et la coordination avec les équipes de secours locales.

La phase post-mission inclut le rapatriement du matériel, la maintenance corrective, le debriefing technique et le rapport de mission au client.

=== Dépendances SI

#block(
  stroke: 1pt + novatics-gray-line,
  radius: 6pt,
  clip: true,
  width: 100%,
)[
  #set text(size: 8pt)
  #table(
    columns: (20%, 20%, 35%, 25%),
    stroke: 0.5pt + novatics-gray-line,
    inset: 6pt,
    fill: (_, row) => if row == 0 { rgb("#D6B656") } else { none },
    align: (left, left, left, center),
    text(fill: black, weight: "bold")[Application],
    text(fill: black, weight: "bold")[Zone SI],
    text(fill: black, weight: "bold")[Usage],
    text(fill: black, weight: "bold")[Criticité],

    [NCC (Command Center)], [Produit], [Contrôle robots, télémétrie temps réel], [CRITIQUE],
    [Novatics Cloud], [Cloud], [Stockage missions, cartographies 3D], [CRITIQUE],
    [Robots N-Series], [Produit], [Drones et robots déployés], [CRITIQUE],
    [Communication satellite], [Externe], [Liaison terrain-cloud (Airbus D&S)], [CRITIQUE],
    [Odoo CRM], [IT], [Suivi client, historique missions], [MODÉRÉ],
  )
]

=== Besoins DICT

#grid(
  columns: (1fr, 1fr, 1fr, 1fr),
  gutter: 10pt,
  [
    #align(center)[
      #text(weight: "bold", size: 9pt)[Disponibilité]
      #v(4pt)
      #box(fill: color-critical, inset: 6pt, radius: 4pt)[
        #text(fill: white, weight: "bold")[CRITIQUE]
      ]
      #v(4pt)
      #text(size: 8pt)[RTO : 0 (temps réel)]
    ]
  ],
  [
    #align(center)[
      #text(weight: "bold", size: 9pt)[Intégrité]
      #v(4pt)
      #box(fill: color-critical, inset: 6pt, radius: 4pt)[
        #text(fill: white, weight: "bold")[CRITIQUE]
      ]
      #v(4pt)
      #text(size: 8pt)[Coordonnées GPS]
    ]
  ],
  [
    #align(center)[
      #text(weight: "bold", size: 9pt)[Confidentialité]
      #v(4pt)
      #box(fill: color-critical, inset: 6pt, radius: 4pt)[
        #text(fill: white, weight: "bold")[CRITIQUE]
      ]
      #v(4pt)
      #text(size: 8pt)[Données victimes]
    ]
  ],
  [
    #align(center)[
      #text(weight: "bold", size: 9pt)[Traçabilité]
      #v(4pt)
      #box(fill: color-high, inset: 6pt, radius: 4pt)[
        #text(fill: white, weight: "bold")[ÉLEVÉ]
      ]
      #v(4pt)
      #text(size: 8pt)[Rapports missions]
    ]
  ],
)

#callout(title: "Impact vital", type: "critical")[
  Une défaillance du processus de déploiement missions peut avoir des conséquences directes sur des vies humaines. La disponibilité des systèmes (NCC, Cloud, communications) en situation de crise est une exigence absolue. Les modes dégradés doivent permettre une autonomie locale complète des robots.
]

#pagebreak()

== P04 - Support Client

=== Description fonctionnelle

Le processus de support client assure l'accompagnement des utilisateurs après la vente. Il couvre la formation des opérateurs, la maintenance préventive et corrective, l'assistance technique à distance, et le support sur site lors des missions.

L'équipe Customer Success compte 5 personnes basées à Toulouse, avec des interventions régulières sur les sites clients (Protection Civile, Croix-Rouge, Tokyo Metro) et lors des déploiements terrain.

=== Activités principales

La formation initiale comprend la certification des opérateurs (3 jours), la formation avancée pour les superviseurs, et les sessions de recyclage annuelles. Plus de 150 opérateurs ont été formés à ce jour.

La maintenance préventive inclut les visites trimestrielles sur site, les mises à jour firmware et NCC, et le remplacement préventif des pièces d'usure (batteries, hélices).

L'assistance technique couvre le support téléphonique et email (hotline 24/7 pour les urgences), le diagnostic à distance via NCC, et les interventions sur site pour les pannes majeures.

=== Dépendances SI

#block(
  stroke: 1pt + novatics-gray-line,
  radius: 6pt,
  clip: true,
  width: 100%,
)[
  #set text(size: 8pt)
  #table(
    columns: (20%, 20%, 35%, 25%),
    stroke: 0.5pt + novatics-gray-line,
    inset: 6pt,
    fill: (_, row) => if row == 0 { novatics-cyan } else { none },
    align: (left, left, left, center),
    text(fill: white, weight: "bold")[Application],
    text(fill: white, weight: "bold")[Zone SI],
    text(fill: white, weight: "bold")[Usage],
    text(fill: white, weight: "bold")[Criticité],

    [Odoo Helpdesk], [IT], [Ticketing support, SLA], [ÉLEVÉ],
    [Odoo CRM], [IT], [Historique client, contrats], [ÉLEVÉ],
    [NCC Remote], [Cloud], [Diagnostic à distance], [ÉLEVÉ],
    [Nextcloud], [IT], [Documentation, manuels], [MODÉRÉ],
    [Mattermost], [IT], [Communication équipe], [MODÉRÉ],
  )
]

#pagebreak()

// =============================================================================
// CHAPITRE 4 : PROCESSUS SUPPORT
// =============================================================================

= Processus support

== P05 - Commercial et Ventes

=== Description fonctionnelle

Le processus commercial pilote l'acquisition de nouveaux clients et le développement du chiffre d'affaires. Il couvre trois segments : B2G (gouvernements, représentant 45% du CA), ONG humanitaires (25% du CA), et B2B industriel (30% du CA).

L'équipe commerciale compte 9 personnes réparties sur 4 sites : Toulouse (siège), Tokyo, San Francisco et Lima, sous la direction de Sarah AL-FAYED (CCO).

=== Activités principales

La prospection comprend l'identification des opportunités, la participation aux salons (MILIPOL, Eurosatory), et les réponses aux appels d'offres publics. La négociation inclut les démonstrations produits, les POC (Proof of Concept), et la contractualisation. Le suivi commercial assure la gestion du pipeline, le reporting et les prévisions de ventes.

=== Dépendances SI

#block(
  stroke: 1pt + novatics-gray-line,
  radius: 6pt,
  clip: true,
  width: 100%,
)[
  #set text(size: 8pt)
  #table(
    columns: (20%, 20%, 35%, 25%),
    stroke: 0.5pt + novatics-gray-line,
    inset: 6pt,
    fill: (_, row) => if row == 0 { novatics-petrol } else { none },
    align: (left, left, left, center),
    text(fill: white, weight: "bold")[Application],
    text(fill: white, weight: "bold")[Zone SI],
    text(fill: white, weight: "bold")[Usage],
    text(fill: white, weight: "bold")[Criticité],

    [Odoo CRM], [IT], [Pipeline commercial, opportunités], [ÉLEVÉ],
    [Mailcow], [IT], [Communication clients], [ÉLEVÉ],
    [Nextcloud], [IT], [Propositions commerciales], [MODÉRÉ],
    [OnlyOffice], [IT], [Rédaction offres], [MODÉRÉ],
    [VPN WireGuard], [IT], [Accès distant bureaux int.], [ÉLEVÉ],
  )
]

== P06 - Supply Chain

=== Description fonctionnelle

Le processus supply chain garantit l'approvisionnement en composants critiques pour la production. Il gère les relations avec les fournisseurs stratégiques (NVIDIA, Intel, Thales), les stocks de composants et de pièces détachées, et la logistique d'expédition vers les clients.

Ce processus est particulièrement sensible aux risques de rupture d'approvisionnement, notamment pour les composants électroniques spécialisés (GPU NVIDIA Jetson, modules radio Thales).

=== Dépendances SI

#block(
  stroke: 1pt + novatics-gray-line,
  radius: 6pt,
  clip: true,
  width: 100%,
)[
  #set text(size: 8pt)
  #table(
    columns: (20%, 20%, 35%, 25%),
    stroke: 0.5pt + novatics-gray-line,
    inset: 6pt,
    fill: (_, row) => if row == 0 { novatics-petrol } else { none },
    align: (left, left, left, center),
    text(fill: white, weight: "bold")[Application],
    text(fill: white, weight: "bold")[Zone SI],
    text(fill: white, weight: "bold")[Usage],
    text(fill: white, weight: "bold")[Criticité],

    [Odoo Purchase], [IT/OT], [Commandes fournisseurs], [CRITIQUE],
    [Odoo Inventory], [IT/OT], [Gestion des stocks], [CRITIQUE],
    [EDI fournisseurs], [Externe], [Échanges automatisés], [ÉLEVÉ],
    [Transporteurs], [Externe], [Suivi expéditions], [MODÉRÉ],
  )
]

#pagebreak()

== P07 - Finance et Comptabilité

=== Description fonctionnelle

Le processus finance assure la gestion financière de l'entreprise : comptabilité générale et analytique, trésorerie, facturation clients, paiement fournisseurs, et gestion des subventions (BPI France, Région Occitanie).

L'équipe finance compte 8 personnes sous la direction de Claire DELACROIX (CFO).

=== Dépendances SI

#block(
  stroke: 1pt + novatics-gray-line,
  radius: 6pt,
  clip: true,
  width: 100%,
)[
  #set text(size: 8pt)
  #table(
    columns: (20%, 20%, 35%, 25%),
    stroke: 0.5pt + novatics-gray-line,
    inset: 6pt,
    fill: (_, row) => if row == 0 { novatics-petrol } else { none },
    align: (left, left, left, center),
    text(fill: white, weight: "bold")[Application],
    text(fill: white, weight: "bold")[Zone SI],
    text(fill: white, weight: "bold")[Usage],
    text(fill: white, weight: "bold")[Criticité],

    [Odoo Accounting], [IT], [Comptabilité générale], [CRITIQUE],
    [Odoo Invoicing], [IT], [Facturation clients], [ÉLEVÉ],
    [Banque en ligne], [Externe], [Virements, trésorerie], [CRITIQUE],
    [OnlyOffice], [IT], [Tableaux de bord, reporting], [MODÉRÉ],
  )
]

== P08 - Ressources Humaines

=== Description fonctionnelle

Le processus RH gère le capital humain de Novatics : recrutement (15-20 embauches/an en phase de croissance), administration du personnel, paie, formation et développement des compétences.

L'équipe RH compte 3 personnes sous la direction de David CHEN (HR Director).

=== Dépendances SI

#block(
  stroke: 1pt + novatics-gray-line,
  radius: 6pt,
  clip: true,
  width: 100%,
)[
  #set text(size: 8pt)
  #table(
    columns: (20%, 20%, 35%, 25%),
    stroke: 0.5pt + novatics-gray-line,
    inset: 6pt,
    fill: (_, row) => if row == 0 { novatics-petrol } else { none },
    align: (left, left, left, center),
    text(fill: white, weight: "bold")[Application],
    text(fill: white, weight: "bold")[Zone SI],
    text(fill: white, weight: "bold")[Usage],
    text(fill: white, weight: "bold")[Criticité],

    [Odoo HR], [IT], [Gestion du personnel, congés], [ÉLEVÉ],
    [Odoo Payroll], [IT], [Paie, déclarations sociales], [CRITIQUE],
    [Odoo Recruitment], [IT], [Processus de recrutement], [MODÉRÉ],
    [Nextcloud], [IT], [Dossiers du personnel], [ÉLEVÉ],
  )
]

#pagebreak()

// =============================================================================
// CHAPITRE 5 : PROCESSUS DE PILOTAGE
// =============================================================================

= Processus de pilotage

== P09 - Pilotage Stratégique

=== Description fonctionnelle

Le processus de pilotage stratégique définit la vision à long terme de Novatics, pilote les opérations de croissance externe (M&A), gère les relations avec les investisseurs, et coordonne les partenariats stratégiques (Airbus D&S, Thales, ONU OCHA).

Ce processus est porté par le CEO (Alexandre DUBOIS) et le CSO (Marc TIBERI), avec le support du COMEX.

=== Dépendances SI

#block(
  stroke: 1pt + novatics-gray-line,
  radius: 6pt,
  clip: true,
  width: 100%,
)[
  #set text(size: 8pt)
  #table(
    columns: (20%, 20%, 35%, 25%),
    stroke: 0.5pt + novatics-gray-line,
    inset: 6pt,
    fill: (_, row) => if row == 0 { novatics-petrol } else { none },
    align: (left, left, left, center),
    text(fill: white, weight: "bold")[Application],
    text(fill: white, weight: "bold")[Zone SI],
    text(fill: white, weight: "bold")[Usage],
    text(fill: white, weight: "bold")[Criticité],

    [Nextcloud], [IT], [Documents stratégiques confidentiels], [CRITIQUE],
    [OnlyOffice], [IT], [Business plans, présentations], [ÉLEVÉ],
    [Mailcow], [IT], [Communication investisseurs], [ÉLEVÉ],
    [Mattermost], [IT], [Coordination COMEX], [MODÉRÉ],
  )
]

== P10 - Conformité et Juridique

=== Description fonctionnelle

Le processus juridique protège les intérêts de Novatics : gestion de la propriété intellectuelle (12 brevets déposés), rédaction et négociation des contrats, conformité réglementaire (RGPD, NIS2, export control), et veille juridique.

L'équipe juridique compte 2 personnes sous la direction de Béatrice MOREAU (Head of Legal).

=== Dépendances SI

#block(
  stroke: 1pt + novatics-gray-line,
  radius: 6pt,
  clip: true,
  width: 100%,
)[
  #set text(size: 8pt)
  #table(
    columns: (20%, 20%, 35%, 25%),
    stroke: 0.5pt + novatics-gray-line,
    inset: 6pt,
    fill: (_, row) => if row == 0 { novatics-petrol } else { none },
    align: (left, left, left, center),
    text(fill: white, weight: "bold")[Application],
    text(fill: white, weight: "bold")[Zone SI],
    text(fill: white, weight: "bold")[Usage],
    text(fill: white, weight: "bold")[Criticité],

    [Nextcloud], [IT], [Contrats, brevets, NDA], [CRITIQUE],
    [OnlyOffice], [IT], [Rédaction juridique], [ÉLEVÉ],
    [Odoo Sign], [IT], [Signature électronique], [ÉLEVÉ],
    [Registre RGPD], [IT], [Traitements données personnelles], [CRITIQUE],
  )
]

#pagebreak()

== P11 - Sécurité du Système d'Information

=== Description fonctionnelle

Le processus SSI assure la protection du patrimoine informationnel de Novatics. Il couvre la gouvernance de la sécurité, la gestion des risques, la conformité réglementaire (NIS2, II 901 pour le contrat DGA), la détection et la réponse aux incidents, et la sensibilisation des collaborateurs.

L'équipe SSI compte 6 personnes sous la direction de Mei Lin ZHAO (CISO) : 2 Security Engineers, 1 DevSecOps Engineer, 1 GRC Analyst, et 1 OT Security Specialist.

=== Activités principales

La gouvernance comprend la définition de la PSSI, le suivi des indicateurs de sécurité, et le reporting au COMEX. La gestion des risques couvre l'analyse de risques EBIOS RM, le plan de traitement, et le suivi des mesures. Les opérations incluent la supervision SIEM (Wazuh), la gestion des vulnérabilités, et la réponse aux incidents. La conformité assure la préparation aux audits (ANSSI, DGA-MI, ISO 27001).

=== Dépendances SI

#block(
  stroke: 1pt + novatics-gray-line,
  radius: 6pt,
  clip: true,
  width: 100%,
)[
  #set text(size: 8pt)
  #table(
    columns: (20%, 20%, 35%, 25%),
    stroke: 0.5pt + novatics-gray-line,
    inset: 6pt,
    fill: (_, row) => if row == 0 { color-critical } else { none },
    align: (left, left, left, center),
    text(fill: white, weight: "bold")[Application],
    text(fill: white, weight: "bold")[Zone SI],
    text(fill: white, weight: "bold")[Usage],
    text(fill: white, weight: "bold")[Criticité],

    [Wazuh], [Transverse], [SIEM/XDR, détection menaces], [CRITIQUE],
    [Keycloak], [Transverse], [IAM, authentification], [CRITIQUE],
    [FreeIPA], [Transverse], [Annuaire, Kerberos], [CRITIQUE],
    [step-ca], [Transverse], [PKI interne, certificats], [CRITIQUE],
    [OpenVAS], [Transverse], [Scans de vulnérabilités], [ÉLEVÉ],
    [Vaultwarden], [Transverse], [Gestion secrets], [CRITIQUE],
    [Nextcloud], [IT], [Documentation SSI], [ÉLEVÉ],
  )
]

#callout(title: "Projet Lab DR en cours", type: "warning")[
  Le processus SSI pilote actuellement le projet de création du Lab DR (Diffusion Restreinte) pour répondre aux exigences du contrat DGA. Ce projet structurant nécessite la mise en place d'un environnement isolé et homologué conformément à l'II 901. Échéance cible : mi-2026.
]

#pagebreak()

// =============================================================================
// CHAPITRE 6 : MATRICE DES DÉPENDANCES
// =============================================================================

= Matrice des dépendances

== Processus → Applications

La matrice ci-dessous synthétise les dépendances entre les processus métiers et les applications du SI. Les dépendances critiques (●) signifient que l'indisponibilité de l'application bloque le processus. Les dépendances importantes (○) indiquent une dégradation significative mais non bloquante.

#figure(
  image("/docs/assets/schemas/B1-A1-C1-04-matrice-processus-applications.png", width: 100%),
  caption: [Matrice de dépendances Processus → Applications],
)

#pagebreak()

== Applications → Infrastructure

#block(
  stroke: 1pt + novatics-gray-line,
  radius: 6pt,
  clip: true,
  width: 100%,
)[
  #set text(size: 7.5pt)
  #table(
    columns: (18%, 14%, 14%, 14%, 14%, 13%, 13%),
    stroke: 0.5pt + novatics-gray-line,
    inset: 5pt,
    fill: (_, row) => if row == 0 { novatics-petrol } else { none },
    align: (left, center, center, center, center, center, center),
    text(fill: white, weight: "bold")[Application],
    text(fill: white, weight: "bold")[Srv Toulouse],
    text(fill: white, weight: "bold")[Srv Chambéry],
    text(fill: white, weight: "bold")[AWS Cloud],
    text(fill: white, weight: "bold")[Keycloak],
    text(fill: white, weight: "bold")[PostgreSQL],
    text(fill: white, weight: "bold")[MinIO],

    [GitLab], [●], [], [], [●], [●], [●],
    [Odoo (tous)], [●], [○], [], [●], [●], [],
    [Nextcloud], [●], [], [], [●], [●], [●],
    [NCC], [], [], [●], [●], [●], [●],
    [Novatics Cloud], [], [], [●], [●], [●], [●],
    [Wazuh], [●], [○], [], [], [], [],
    [SCADA], [], [●], [], [], [], [],
  )
]

#text(size: 8pt)[● = Dépendance critique | ○ = Dépendance secondaire]

== Points de défaillance unique (SPOF)

L'analyse des dépendances révèle plusieurs points de défaillance unique à traiter prioritairement.

=== SPOF identifiés

*Keycloak (IAM)* : Toutes les applications IT et R&D dépendent de Keycloak pour l'authentification. Une indisponibilité bloquerait l'accès à l'ensemble du SI. Mesure actuelle : cluster haute disponibilité (2 nœuds). Recommandation : ajouter un troisième nœud et documenter la procédure de failover.

*Connexion Internet Toulouse* : Le siège dépend d'un seul FAI pour l'accès Internet et le VPN des sites distants. Mesure recommandée : souscrire une liaison de secours 4G/5G avec basculement automatique.

*PostgreSQL* : La base de données centrale héberge les données de GitLab, Odoo, et NCC. Mesure actuelle : réplication synchrone sur un standby. Recommandation : externaliser les backups hors site (Scaleway backup).

*AWS eu-west-3* : Le Novatics Cloud est hébergé dans une seule région AWS. Mesure recommandée : activer la réplication multi-régions pour les données critiques des missions.

#pagebreak()

// =============================================================================
// CHAPITRE 7 : FLUX DE DONNÉES CRITIQUES
// =============================================================================

= Flux de données critiques

== Cartographie des flux

La figure ci-dessous présente les principaux flux de données entre les processus métiers et les zones du SI.

#figure(
  image("/docs/assets/schemas/B1-A1-C1-04-flux-donnees-critiques.png", width: 100%),
  caption: [Flux de données critiques entre processus et zones SI],
)

#pagebreak()

== Description des flux critiques

=== Flux F01 : R&D → Production

Ce flux transporte les nomenclatures produits, les firmwares validés, et les procédures d'assemblage depuis le GitLab R&D vers l'ERP Production (Odoo Manufacturing).

#metadata-table(
  ("Source", "GitLab (Zone R&D)"),
  ("Destination", "Odoo Manufacturing (Zone OT)"),
  ("Protocole", "HTTPS + API REST"),
  ("Fréquence", "À chaque release validée"),
  ("Classification", "Confidentiel Entreprise"),
  ("Chiffrement", "TLS 1.3"),
)

=== Flux F02 : Robots → Cloud

Ce flux transporte la télémétrie temps réel des robots en mission (position GPS, vidéo, capteurs) vers le Novatics Cloud pour stockage et analyse.

#metadata-table(
  ("Source", "Robots N-Series (Zone Produit)"),
  ("Destination", "Novatics Cloud (Zone Cloud)"),
  ("Protocole", "MQTT over TLS + WebRTC"),
  ("Fréquence", "Temps réel (1-10 Hz selon capteur)"),
  ("Classification", "Confidentiel - Données sensibles"),
  ("Chiffrement", "TLS 1.3 + AES-256 payload"),
)

#callout(title: "Données sensibles", type: "critical")[
  Le flux F02 transporte des données potentiellement sensibles (localisation de victimes, images de zones sinistrées). Ces données sont soumises au RGPD et aux exigences de confidentialité des clients ONG (Croix-Rouge, MSF). Le chiffrement de bout en bout est obligatoire.
]

=== Flux F03 : IT → Bureaux internationaux

Ce flux assure l'accès des bureaux distants (Tokyo, SF, Lima) aux applications centralisées à Toulouse via VPN.

#metadata-table(
  ("Source", "Bureaux internationaux"),
  ("Destination", "Applications IT (Toulouse)"),
  ("Protocole", "WireGuard VPN"),
  ("Fréquence", "Permanent"),
  ("Classification", "Interne"),
  ("Chiffrement", "WireGuard (ChaCha20)"),
)

#pagebreak()

// =============================================================================
// CHAPITRE 8 : SYNTHÈSE ET RECOMMANDATIONS
// =============================================================================

= Synthèse et recommandations

== Récapitulatif de la criticité

#grid(
  columns: (1fr, 1fr),
  gutter: 20pt,
  [
    === Processus critiques (4)

    Les processus suivants nécessitent une disponibilité maximale et sont prioritaires dans l'analyse de risques et les plans de continuité :

    - *P01 - R&D et Conception* : Protection de la propriété intellectuelle (brevets, algorithmes SLAM)
    - *P02 - Production* : Continuité de la chaîne d'assemblage
    - *P03 - Déploiement Missions* : Impact vital direct lors des interventions
    - *P11 - Sécurité SI* : Pilier de la protection globale
  ],
  [
    === Processus à criticité élevée (5)

    Ces processus supportent directement les activités critiques ou ont un impact significatif sur le business :

    - *P04 - Support Client* : Engagement SLA, satisfaction
    - *P05 - Commercial* : Pipeline de revenus
    - *P06 - Supply Chain* : Approvisionnement critique
    - *P09 - Pilotage Stratégique* : Levées de fonds
    - *P10 - Conformité* : Risques juridiques, DGA
  ],
)

== Recommandations prioritaires

=== Court terme (0-3 mois)

*R1 - Renforcer Keycloak* : Ajouter un troisième nœud au cluster IAM et documenter les procédures de failover. Budget estimé : 5 k€.

*R2 - Liaison Internet de secours* : Déployer une liaison 4G/5G de backup avec basculement automatique à Toulouse. Budget estimé : 3 k€/an.

*R3 - Backup externalisé* : Configurer la réplication des backups PostgreSQL vers Scaleway (hors AWS). Budget estimé : 2 k€/an.

=== Moyen terme (3-12 mois)

*R4 - PCA/PRA formalisé* : Rédiger les plans de continuité pour les processus critiques (P01, P02, P03) avec exercices de test annuels.

*R5 - Multi-région Cloud* : Activer la réplication AWS multi-régions pour le Novatics Cloud.

*R6 - Audit des flux* : Réaliser un audit des flux de données pour identifier les transmissions non chiffrées ou non documentées.

#pagebreak()

// =============================================================================
// ANNEXE A : GLOSSAIRE
// =============================================================================

#heading(level: 1, numbering: none)[Annexe A : Glossaire]

#v(1em)

#block(
  stroke: 1pt + novatics-gray-line,
  radius: 6pt,
  clip: true,
  width: 100%,
)[
  #set text(size: 8pt)
  #table(
    columns: (20%, 80%),
    stroke: 0.5pt + novatics-gray-line,
    inset: 8pt,
    fill: (_, row) => if row == 0 { novatics-petrol } else { none },
    text(fill: white, weight: "bold")[Terme], text(fill: white, weight: "bold")[Définition],

    [DICT],
    [Disponibilité, Intégrité, Confidentialité, Traçabilité - les quatre critères d'évaluation de la sécurité d'un actif],

    [NCC], [Novatics Command Center - logiciel de contrôle des robots],
    [OT], [Operational Technology - systèmes industriels (production)],
    [PCA], [Plan de Continuité d'Activité],
    [PRA], [Plan de Reprise d'Activité],
    [RTO], [Recovery Time Objective - durée maximale d'interruption tolérée],
    [RPO], [Recovery Point Objective - perte de données maximale tolérée],
    [SCADA], [Supervisory Control and Data Acquisition - supervision industrielle],
    [SLAM], [Simultaneous Localization and Mapping - algorithme de navigation autonome],
    [SPOF], [Single Point Of Failure - point de défaillance unique],
  )
]

#pagebreak()

// =============================================================================
// ANNEXE B : LÉGENDE DES SCHÉMAS
// =============================================================================

#heading(level: 1, numbering: none)[Annexe B : Légende des schémas]

#v(1em)

=== Couleurs des zones SI

#grid(
  columns: (1fr, 1fr, 1fr),
  gutter: 15pt,
  [
    #box(fill: rgb("#E8F4FD"), stroke: 2pt + rgb("#2A526E"), width: 100%, inset: 10pt, radius: 4pt)[
      #text(size: 9pt, weight: "bold")[Zone IT]
      #v(4pt)
      #text(size: 8pt)[Bureautique, collaboration]
    ]
  ],
  [
    #box(fill: rgb("#e1d5e7"), stroke: 2pt + rgb("#7C5F8B"), width: 100%, inset: 10pt, radius: 4pt)[
      #text(size: 9pt, weight: "bold")[Zone R&D]
      #v(4pt)
      #text(size: 8pt)[Propriété intellectuelle]
    ]
  ],
  [
    #box(fill: rgb("#f8cecc"), stroke: 2pt + rgb("#B85450"), width: 100%, inset: 10pt, radius: 4pt)[
      #text(size: 9pt, weight: "bold")[Zone OT]
      #v(4pt)
      #text(size: 8pt)[Production Chambéry]
    ]
  ],
)

#v(1em)

#grid(
  columns: (1fr, 1fr, 1fr),
  gutter: 15pt,
  [
    #box(fill: rgb("#e6fbe9"), stroke: 2pt + rgb("#059669"), width: 100%, inset: 10pt, radius: 4pt)[
      #text(size: 9pt, weight: "bold")[Zone Cloud]
      #v(4pt)
      #text(size: 8pt)[Novatics Cloud (AWS)]
    ]
  ],
  [
    #box(fill: rgb("#fff2cc"), stroke: 2pt + rgb("#D6B656"), width: 100%, inset: 10pt, radius: 4pt)[
      #text(size: 9pt, weight: "bold")[Zone Produit]
      #v(4pt)
      #text(size: 8pt)[Robots N-Series]
    ]
  ],
  [
    #box(fill: rgb("#647687"), stroke: 2pt + rgb("#314354"), width: 100%, inset: 10pt, radius: 4pt)[
      #text(size: 9pt, weight: "bold", fill: white)[Transverse]
      #v(4pt)
      #text(size: 8pt, fill: white)[Infrastructure sécurité]
    ]
  ],
)

#v(2em)

=== Niveaux de criticité

#grid(
  columns: (1fr, 1fr, 1fr, 1fr),
  gutter: 10pt,
  [
    #align(center)[
      #box(fill: color-critical, inset: 8pt, radius: 4pt)[
        #text(fill: white, weight: "bold", size: 9pt)[CRITIQUE]
      ]
      #v(4pt)
      #text(size: 8pt)[RTO < 4h]
    ]
  ],
  [
    #align(center)[
      #box(fill: color-high, inset: 8pt, radius: 4pt)[
        #text(fill: white, weight: "bold", size: 9pt)[ÉLEVÉ]
      ]
      #v(4pt)
      #text(size: 8pt)[RTO < 24h]
    ]
  ],
  [
    #align(center)[
      #box(fill: color-medium, inset: 8pt, radius: 4pt)[
        #text(fill: black, weight: "bold", size: 9pt)[MODÉRÉ]
      ]
      #v(4pt)
      #text(size: 8pt)[RTO < 72h]
    ]
  ],
  [
    #align(center)[
      #box(fill: color-low, inset: 8pt, radius: 4pt)[
        #text(fill: white, weight: "bold", size: 9pt)[FAIBLE]
      ]
      #v(4pt)
      #text(size: 8pt)[RTO > 72h]
    ]
  ],
)

#v(2em)

=== Symboles des flux

#grid(
  columns: (1fr, 1fr),
  gutter: 20pt,
  [
    #text(size: 9pt)[● Dépendance critique (blocage si indisponible)]
    #v(8pt)
    #text(size: 9pt)[○ Dépendance importante (dégradation)]
  ],
  [
    #text(size: 9pt)[→ Flux unidirectionnel]
    #v(8pt)
    #text(size: 9pt)[↔ Flux bidirectionnel]
  ],
)
