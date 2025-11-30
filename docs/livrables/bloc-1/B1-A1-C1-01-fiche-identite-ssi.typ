// =============================================================================
// NOVATICS - Fiche d'identité SSI
// Document : B1-A1-C1-01 | Référence : NOV-SSI-2025-001
// =============================================================================

#import "/docs/templates/novatics-template.typ": *

#show: novatics-doc.with(
  title: "Fiche d'identité SSI",
  subtitle: "Note de cadrage cybersécurité",
  doc-category: "Note de cadrage",
  reference: "NOV-SSI-2025-001",
  version: "1.0",
  date: datetime(year: 2025, month: 11, day: 22),
  author: "Mei Lin ZHAO, CISO",
  tlp: "AMBER",
  logo-path: "/docs/assets/pictures/logo/novatics-full-logo.png",
)

// -----------------------------------------------------------------------------
// CONTRÔLE DOCUMENTAIRE
// -----------------------------------------------------------------------------

#version-history(
  (version: "0.1", date: "08/11/2025", author: "Mei Lin ZHAO", changes: "Création initiale"),
  (version: "0.2", date: "15/11/2025", author: "Mei Lin ZHAO", changes: "Ajout contexte DGA"),
  (version: "1.0", date: "22/11/2025", author: "Mei Lin ZHAO", changes: "Validation COMEX"),
)

#v(0.5em)

#approval-table((
  (role: "Rédacteur", name: "Mei Lin ZHAO", date: "20/11/2025"),
  (role: "Vérificateur", name: "Dr. Lena ROSTOVA", date: "21/11/2025"),
  (role: "Approbateur", name: "Alexandre DUBOIS", date: "22/11/2025"),
))

#pagebreak()

#custom-outline()

#pagebreak()

// =============================================================================
// CHAPITRE 1 : OBJET ET PÉRIMÈTRE
// =============================================================================

= Objet et périmètre

== Objectif du document

La présente fiche d'identité SSI constitue la note de cadrage cybersécurité de Novatics SAS. Elle vise à fournir une vision synthétique de l'organisation du point de vue de la sécurité des systèmes d'information, en identifiant les actifs critiques, l'environnement réglementaire et les dépendances majeures.

Ce document sert de référence pour l'ensemble des travaux de gouvernance SSI et constitue le point d'entrée du corpus documentaire sécurité.

== Périmètre couvert

Le périmètre de cette fiche d'identité couvre :

- L'organisation Novatics dans sa globalité (siège, usine, bureaux internationaux)
- L'ensemble des systèmes d'information (IT, OT, Cloud, Produits embarqués)
- Les activités opérationnelles et les processus métiers critiques
- Les relations avec les parties prenantes externes

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

    [NOV-SSI-2025-002], [Organisation et gouvernance SSI], [En vigueur],
    [NOV-SSI-2025-003], [Registre des parties prenantes], [En cours],
    [NOV-SSI-2025-004], [Cartographie des processus métiers], [En cours],
  )
]

#pagebreak()

// =============================================================================
// CHAPITRE 2 : PRÉSENTATION DE L'ORGANISATION
// =============================================================================

= Présentation de l'organisation

== Identité de l'entreprise

#metadata-table(
  ("Raison sociale", "NOVATICS SAS"),
  ("Secteur d'activité", "Robotique / Défense & Sécurité Civile / DeepTech"),
  ("Date de création", "15 mars 2018"),
  ("Siège social", "12 Avenue de l'Aéronautique, 31400 Toulouse"),
  ("Effectif actuel", "85 collaborateurs (prévision 120 fin 2026)"),
  ("Chiffre d'affaires 2024", "8,2 M€ (prévision 12,5 M€ en 2025)"),
  ("Stade de développement", "Scale-up (Série B réalisée, Série C prévue Q2 2026)"),
)

== Mission et positionnement

Novatics conçoit, fabrique et opère des robots autonomes de reconnaissance pour les situations de crise (catastrophes naturelles, accidents industriels, environnements NRBC). L'entreprise se positionne comme un acteur deeptech à la croisée de la sécurité civile et de la défense.

La mission de l'entreprise se résume par sa signature : *"Saving Lives Through Technology"*.

== Implantations géographiques

#block(
  stroke: 1pt + novatics-gray-line,
  radius: 6pt,
  clip: true,
  width: 100%,
)[
  #set text(size: 9pt)
  #table(
    columns: (22%, 38%, 25%, 15%),
    stroke: 0.5pt + novatics-gray-line,
    inset: 8pt,
    fill: (_, row) => if row == 0 { novatics-petrol } else { none },
    align: (left, left, left, center),
    text(fill: white, weight: "bold")[Site],
    text(fill: white, weight: "bold")[Fonction],
    text(fill: white, weight: "bold")[Localisation],
    text(fill: white, weight: "bold")[Effectif],

    [Siège / R&D], [Direction, R&D, Fonctions support], [Toulouse (31)], [62],
    [Usine], [Production, Assemblage, Tests], [Chambéry (73)], [18],
    [Bureau Tokyo], [Commercial Asie-Pacifique], [Japon], [2],
    [Bureau San Francisco], [Commercial Amériques], [États-Unis], [2],
    [Bureau Lima], [Commercial Amérique du Sud], [Pérou], [1],
  )
]

#pagebreak()

// =============================================================================
// CHAPITRE 3 : JOYAUX DE LA COURONNE
// =============================================================================

= Joyaux de la couronne

Les "joyaux de la couronne" représentent les actifs les plus critiques de Novatics, dont la compromission aurait un impact majeur sur la survie ou la compétitivité de l'entreprise.

== Propriété intellectuelle

#callout(title: "Actif critique n°1 : Algorithmes SLAM et IA", type: "critical")[
  Les algorithmes de localisation et cartographie simultanée (SLAM) ainsi que les modèles d'IA de détection de victimes constituent le cœur de la différenciation technologique de Novatics. Leur vol ou compromission permettrait à un concurrent de reproduire notre avantage compétitif.
]

#block(
  stroke: 1pt + novatics-gray-line,
  radius: 6pt,
  clip: true,
  width: 100%,
)[
  #set text(size: 9pt)
  #table(
    columns: (30%, 45%, 25%),
    stroke: 0.5pt + novatics-gray-line,
    inset: 8pt,
    fill: (_, row) => if row == 0 { novatics-petrol } else { none },
    align: (left, left, center),
    text(fill: white, weight: "bold")[Actif],
    text(fill: white, weight: "bold")[Description],
    text(fill: white, weight: "bold")[Criticité],

    [Code source IA/SLAM], [Algorithmes de navigation et détection], [#criticality("Critique")],
    [Brevets (12 déposés)], [Protection innovations clés], [#criticality("Élevé")],
    [Firmware robots], [Logiciel embarqué N-Eye, N-Seeker, N-Sonar], [#criticality("Critique")],
    [Modèles IA entraînés], [Datasets et poids des réseaux de neurones], [#criticality("Critique")],
  )
]

== Données sensibles

#block(
  stroke: 1pt + novatics-gray-line,
  radius: 6pt,
  clip: true,
  width: 100%,
)[
  #set text(size: 9pt)
  #table(
    columns: (25%, 40%, 20%, 15%),
    stroke: 0.5pt + novatics-gray-line,
    inset: 8pt,
    fill: (_, row) => if row == 0 { novatics-petrol } else { none },
    align: (left, left, left, center),
    text(fill: white, weight: "bold")[Catégorie],
    text(fill: white, weight: "bold")[Description],
    text(fill: white, weight: "bold")[Réglementation],
    text(fill: white, weight: "bold")[Criticité],

    [Données victimes],
    [Images thermiques, localisations, états de santé],
    [RGPD (sensibles)],
    [#criticality("Critique")],

    [Données missions DGA], [Télémétrie, cartographies zones sensibles], [II 901 / DR], [#criticality("Critique")],
    [Clés cryptographiques], [Certificats robots, clés de chiffrement], [RGS], [#criticality("Critique")],
    [Données clients], [Contrats, configurations, contacts], [RGPD], [#criticality("Élevé")],
  )
]

== Infrastructure critique

#block(
  stroke: 1pt + novatics-gray-line,
  radius: 6pt,
  clip: true,
  width: 100%,
)[
  #set text(size: 9pt)
  #table(
    columns: (30%, 50%, 20%),
    stroke: 0.5pt + novatics-gray-line,
    inset: 8pt,
    fill: (_, row) => if row == 0 { novatics-petrol } else { none },
    align: (left, left, center),
    text(fill: white, weight: "bold")[Composant],
    text(fill: white, weight: "bold")[Rôle],
    text(fill: white, weight: "bold")[Criticité],

    [Novatics Command Center (NCC)], [Station de contrôle des robots en mission], [#criticality("Critique")],
    [Novatics Cloud], [Stockage télémétrie, gestion de flotte], [#criticality("Critique")],
    [Pipeline CI/CD (GitLab)], [Compilation et déploiement firmware], [#criticality("Élevé")],
    [Ligne de production Chambéry], [Assemblage et tests robots], [#criticality("Élevé")],
  )
]

#pagebreak()

// =============================================================================
// CHAPITRE 4 : ENVIRONNEMENT SI
// =============================================================================

= Environnement du système d'information

== Architecture globale

Le SI de Novatics est structuré en cinq zones de confiance distinctes, reflétant la diversité des activités et des niveaux de sensibilité :

#figure(
  image("/docs/assets/schemas/B1-A1-C1-01-zones-si-flux.png", width: 100%),
  caption: [Architecture des zones SI et flux majeurs],
)

== Zones de confiance

#block(
  stroke: 1pt + novatics-gray-line,
  radius: 6pt,
  clip: true,
  width: 100%,
)[
  #set text(size: 9pt)
  #table(
    columns: (18%, 35%, 32%, 15%),
    stroke: 0.5pt + novatics-gray-line,
    inset: 8pt,
    fill: (_, row) => if row == 0 { novatics-petrol } else { none },
    align: (left, left, left, center),
    text(fill: white, weight: "bold")[Zone],
    text(fill: white, weight: "bold")[Périmètre],
    text(fill: white, weight: "bold")[Technologies clés],
    text(fill: white, weight: "bold")[Sensibilité],

    [IT Corporate], [Bureautique, RH, Finance, CRM], [Odoo, Nextcloud, Keycloak], [Modérée],
    [R&D], [Développement, dépôts code, CI/CD], [GitLab, SonarQube, Vault], [Critique],
    [OT Production], [Ligne d'assemblage, bancs de test], [Automates, MES, Zabbix], [Élevée],
    [Cloud], [Novatics Cloud, télémétrie], [AWS, PostgreSQL, TimescaleDB], [Critique],
    [Produit], [Robots déployés, NCC terrain], [Firmware, radio mesh], [Critique],
  )
]

== Flux de données majeurs

#block(
  stroke: 1pt + novatics-gray-line,
  radius: 6pt,
  clip: true,
  width: 100%,
)[
  #set text(size: 9pt)
  #table(
    columns: (20%, 20%, 40%, 20%),
    stroke: 0.5pt + novatics-gray-line,
    inset: 8pt,
    fill: (_, row) => if row == 0 { novatics-petrol } else { none },
    align: (left, left, left, center),
    text(fill: white, weight: "bold")[Source],
    text(fill: white, weight: "bold")[Destination],
    text(fill: white, weight: "bold")[Données],
    text(fill: white, weight: "bold")[Sensibilité],

    [R&D], [Production], [Firmware signés, configurations], [Critique],
    [Robots], [NCC], [Télémétrie temps réel, vidéo], [Critique],
    [NCC], [Novatics Cloud], [Données missions, logs], [Élevée],
    [Cloud], [Clients], [Rapports, analytics], [Modérée],
    [IT], [Partenaires], [Commandes, factures], [Standard],
  )
]

#pagebreak()

// =============================================================================
// CHAPITRE 5 : ENVIRONNEMENT RÉGLEMENTAIRE
// =============================================================================

= Environnement réglementaire et contractuel

== Cadre réglementaire applicable

Novatics opère dans un environnement réglementaire complexe, à la croisée du droit européen, du droit français et des exigences sectorielles Défense.

#block(
  stroke: 1pt + novatics-gray-line,
  radius: 6pt,
  clip: true,
  width: 100%,
)[
  #set text(size: 9pt)
  #table(
    columns: (18%, 35%, 32%, 15%),
    stroke: 0.5pt + novatics-gray-line,
    inset: 8pt,
    fill: (_, row) => if row == 0 { novatics-petrol } else { none },
    align: (left, left, left, center),
    text(fill: white, weight: "bold")[Référentiel],
    text(fill: white, weight: "bold")[Périmètre],
    text(fill: white, weight: "bold")[Exigences clés],
    text(fill: white, weight: "bold")[Échéance],

    [NIS2], [Entité importante (fabricant IoT critique)], [Gouvernance, notification 24h, mesures Art. 21], [Oct. 2024],
    [RGPD], [Données personnelles (victimes, employés)], [DPO, AIPD, registre traitements], [En vigueur],
    [II 901], [SI traitant données DR (contrat DGA)], [Homologation, cloisonnement, habilitations], [2026],
    [LPM], [Potentiel OIV (si désignation)], [SIIV, notification ANSSI], [À surveiller],
    [Export Control], [Biens à double usage], [Licences export, contrôle destination], [En vigueur],
  )
]

== Contrat DGA : enjeu stratégique

#callout(title: "Contrat stratégique : Programme N-Recon (DGA)", type: "warning")[
  En avril 2025, Novatics a signé un contrat de 4,8 M€ avec la Direction Générale de l'Armement pour le développement de robots de reconnaissance NRBC. Ce contrat implique le traitement de données classifiées "Diffusion Restreinte" (DR), nécessitant la mise en conformité du SI avec l'II 901.
]

*Situation actuelle :* Le SI Novatics n'est pas encore homologué pour le traitement de données DR. Un projet de mise en conformité (Lab DR isolé) est en cours, avec une cible d'homologation mi-2026.

*Impact sur la SSI :* Ce contrat constitue un catalyseur majeur de montée en maturité cyber, imposant des exigences de cloisonnement, d'habilitation du personnel et de traçabilité renforcée.

#pagebreak()

// =============================================================================
// CHAPITRE 6 : DÉPENDANCES CRITIQUES
// =============================================================================

= Dépendances critiques

== Fournisseurs stratégiques

L'activité de Novatics repose sur un écosystème de partenaires dont certains sont critiques pour la continuité d'activité.

#block(
  stroke: 1pt + novatics-gray-line,
  radius: 6pt,
  clip: true,
  width: 100%,
)[
  #set text(size: 9pt)
  #table(
    columns: (22%, 25%, 33%, 20%),
    stroke: 0.5pt + novatics-gray-line,
    inset: 8pt,
    fill: (_, row) => if row == 0 { novatics-petrol } else { none },
    align: (left, left, left, center),
    text(fill: white, weight: "bold")[Partenaire],
    text(fill: white, weight: "bold")[Service],
    text(fill: white, weight: "bold")[Impact si défaillance],
    text(fill: white, weight: "bold")[Criticité],

    [AWS], [Hébergement Novatics Cloud], [Perte service client, télémétrie], [#criticality("Critique")],
    [NVIDIA], [GPU embarqués (Jetson)], [Arrêt production robots], [#criticality("Critique")],
    [Thales], [Modules radio sécurisés], [Blocage robots DGA], [#criticality("Élevé")],
    [Intel], [Processeurs embarqués], [Retard production], [#criticality("Élevé")],
    [Scaleway], [Backup cloud secondaire], [Perte redondance], [#criticality("Modéré")],
  )
]

== Clients stratégiques

#block(
  stroke: 1pt + novatics-gray-line,
  radius: 6pt,
  clip: true,
  width: 100%,
)[
  #set text(size: 9pt)
  #table(
    columns: (25%, 25%, 30%, 20%),
    stroke: 0.5pt + novatics-gray-line,
    inset: 8pt,
    fill: (_, row) => if row == 0 { novatics-petrol } else { none },
    align: (left, left, left, center),
    text(fill: white, weight: "bold")[Client],
    text(fill: white, weight: "bold")[Type],
    text(fill: white, weight: "bold")[Exigences SSI],
    text(fill: white, weight: "bold")[CA 2025],

    [DGA], [Défense (B2G)], [II 901, DR, habilitations], [~10%],
    [Croix-Rouge Int.], [Humanitaire], [Confidentialité missions], [~20%],
    [Tokyo Metro], [Infrastructure critique], [ISO 27001 exigé], [~7%],
    [SDIS / Pompiers], [Sécurité civile (B2G)], [Marchés publics, RGPD], [~25%],
  )
]

== Points de défaillance uniques (SPOF)

Les analyses ont identifié plusieurs points de défaillance uniques nécessitant des mesures de résilience :

- *Novatics Cloud (AWS eu-west-3)* : Dépendance unique pour la télémétrie et gestion de flotte
- *Pipeline CI/CD GitLab* : Chaîne unique de compilation firmware
- *Usine Chambéry* : Site unique de production
- *Expertise SLAM* : Concentration sur 3 développeurs clés

#pagebreak()

// =============================================================================
// CHAPITRE 7 : ENJEUX ET DÉFIS SSI
// =============================================================================

= Enjeux et défis SSI

== Enjeux stratégiques

La cybersécurité chez Novatics doit répondre à trois enjeux majeurs :

*1. Protection de la propriété intellectuelle*
Les algorithmes SLAM et IA représentent plusieurs années de R&D et constituent l'avantage compétitif principal. Leur vol par espionnage industriel (concurrent ou étatique) serait catastrophique.

*2. Sécurité des missions de sauvetage*
Une compromission des robots ou du NCC pendant une mission de sauvetage pourrait avoir des conséquences dramatiques : non-localisation de victimes, mise en danger des secouristes, atteinte à la réputation.

*3. Conformité réglementaire*
Le contrat DGA impose une mise en conformité II 901 sous peine de perte du contrat. La directive NIS2 impose des obligations de notification et de gouvernance.

== Menaces identifiées

#block(
  stroke: 1pt + novatics-gray-line,
  radius: 6pt,
  clip: true,
  width: 100%,
)[
  #set text(size: 9pt)
  #table(
    columns: (25%, 45%, 15%, 15%),
    stroke: 0.5pt + novatics-gray-line,
    inset: 8pt,
    fill: (_, row) => if row == 0 { novatics-petrol } else { none },
    align: (left, left, center, center),
    text(fill: white, weight: "bold")[Menace],
    text(fill: white, weight: "bold")[Scénario],
    text(fill: white, weight: "bold")[Probabilité],
    text(fill: white, weight: "bold")[Impact],

    [Espionnage industriel], [Vol code source via intrusion R&D ou insider], [Élevée], [Critique],
    [Sabotage mission], [Compromission NCC pendant intervention], [Moyenne], [Critique],
    [Ransomware], [Chiffrement données et arrêt production], [Élevée], [Élevé],
    [Supply chain attack], [Composants compromis (firmware, hardware)], [Moyenne], [Élevé],
    [Fuite de données], [Exfiltration données victimes ou clients], [Moyenne], [Élevé],
  )
]

== Défis organisationnels

La transformation de Novatics d'une start-up agile vers une structure industrielle travaillant avec des États génère des tensions :

- *Culture vs. Processus* : Équilibre entre agilité R&D et formalisme Défense
- *Croissance vs. Maturité* : La croissance commerciale dépasse la maturité cyber
- *Budget vs. Exigences* : Ressources limitées face aux exigences réglementaires croissantes
- *International vs. Souveraineté* : Présence mondiale vs. contraintes export control

#pagebreak()

// =============================================================================
// ANNEXE : GLOSSAIRE
// =============================================================================

= Annexe A : Glossaire

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
    align: (left, left),
    text(fill: white, weight: "bold")[Acronyme], text(fill: white, weight: "bold")[Définition],
    [AIPD], [Analyse d'Impact relative à la Protection des Données],
    [CI/CD], [Continuous Integration / Continuous Deployment],
    [DGA], [Direction Générale de l'Armement],
    [DR], [Diffusion Restreinte (niveau de classification)],
    [II 901], [Instruction Interministérielle n°901 (protection SI sensibles)],
    [LPM], [Loi de Programmation Militaire],
    [NCC], [Novatics Command Center (station de contrôle)],
    [NIS2], [Directive Network and Information Security 2],
    [NRBC], [Nucléaire, Radiologique, Biologique, Chimique],
    [OIV], [Opérateur d'Importance Vitale],
    [OT], [Operational Technology],
    [RGPD], [Règlement Général sur la Protection des Données],
    [RGS], [Référentiel Général de Sécurité],
    [SLAM], [Simultaneous Localization and Mapping],
    [SPOF], [Single Point of Failure],
    [SSI], [Sécurité des Systèmes d'Information],
  )
]
