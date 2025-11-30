// =============================================================================
// NOVATICS - Registre des parties prenantes SSI
// Document : B1-A1-C1-03 | Référence : NOV-SSI-2025-003
// =============================================================================

#import "/docs/templates/novatics-template.typ": *

#show: novatics-doc.with(
  title: "Registre des parties prenantes",
  subtitle: "Cartographie des acteurs internes et externes SSI",
  doc-category: "Gouvernance",
  reference: "NOV-SSI-2025-003",
  version: "1.0",
  date: datetime(year: 2025, month: 11, day: 28),
  author: "Mei Lin ZHAO, CISO",
  tlp: "AMBER",
  logo-path: "/docs/assets/pictures/logo/novatics-full-logo.png",
)

// -----------------------------------------------------------------------------
// CONTRÔLE DOCUMENTAIRE
// -----------------------------------------------------------------------------

#version-history(
  (version: "0.1", date: "12/11/2025", author: "Marie LEFEVRE", changes: "Création initiale"),
  (version: "0.2", date: "20/11/2025", author: "Mei Lin ZHAO", changes: "Ajout analyse pouvoir/intérêt"),
  (version: "0.3", date: "25/11/2025", author: "Mei Lin ZHAO", changes: "Intégration exigences DGA"),
  (version: "1.0", date: "28/11/2025", author: "Mei Lin ZHAO", changes: "Validation COMEX"),
)

#v(0.5em)

#approval-table((
  (role: "Rédacteur", name: "Marie LEFEVRE", date: "25/11/2025"),
  (role: "Vérificateur", name: "Mei Lin ZHAO", date: "27/11/2025"),
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

Le présent registre identifie et caractérise l'ensemble des parties prenantes ayant une influence sur la sécurité des systèmes d'information de Novatics ou étant impactées par celle-ci. Ce document répond aux exigences de gouvernance de l'ISO 27001 (clause 4.2) et de la directive NIS2 (Article 21).

L'identification des parties prenantes constitue un prérequis essentiel pour la définition de la Politique de Sécurité du SI (PSSI) et la priorisation des actions de sécurité.

== Périmètre couvert

Le registre couvre les parties prenantes :

- Internes : collaborateurs, instances de gouvernance, représentants du personnel
- Externes : clients, fournisseurs, partenaires, investisseurs, autorités réglementaires
- Indirectes : utilisateurs finaux des robots, victimes des catastrophes

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
    [NOV-SSI-2025-002], [Organisation et gouvernance SSI], [En vigueur],
    [ISO 27001:2022], [Clause 4.2 - Parties intéressées], [Référentiel],
    [NIS2], [Article 21 - Mesures de gestion des risques], [Réglementation],
  )
]

== Méthodologie

L'identification des parties prenantes a été réalisée selon une approche structurée :

+ Inventaire des acteurs internes et externes en relation avec Novatics
+ Caractérisation de leurs attentes et exigences vis-à-vis de la SSI
+ Analyse de leur niveau de pouvoir et d'intérêt (matrice de Mitchell)
+ Définition des stratégies d'engagement adaptées
+ Identification des canaux de communication appropriés

#pagebreak()

// =============================================================================
// CHAPITRE 2 : PARTIES PRENANTES INTERNES
// =============================================================================

= Parties prenantes internes

== Vue d'ensemble

Les parties prenantes internes regroupent l'ensemble des collaborateurs et instances ayant un rôle direct dans la gouvernance ou l'opération de la SSI.

#grid(
  columns: (1fr, 1fr, 1fr),
  gutter: 12pt,
  kpi-card("85", "Collaborateurs", accent: novatics-petrol),
  kpi-card("9", "Membres COMEX", accent: novatics-cyan),
  kpi-card("6", "Équipe SSI", accent: novatics-orange),
)

== Direction générale et COMEX

#callout(title: "Responsabilité de la direction (NIS2 Art. 20)", type: "info")[
  La directive NIS2 impose que les organes de direction approuvent les mesures de gestion des risques, supervisent leur mise en œuvre et puissent être tenus responsables en cas de non-conformité. Une formation obligatoire aux enjeux cyber est également requise.
]

#block(
  stroke: 1pt + novatics-gray-line,
  radius: 6pt,
  clip: true,
  width: 100%,
)[
  #set text(size: 8pt)
  #table(
    columns: (18%, 15%, 35%, 32%),
    stroke: 0.5pt + novatics-gray-line,
    inset: 6pt,
    fill: (_, row) => if row == 0 { novatics-petrol } else { none },
    align: (left, left, left, left),
    text(fill: white, weight: "bold")[Membre],
    text(fill: white, weight: "bold")[Fonction],
    text(fill: white, weight: "bold")[Attentes SSI],
    text(fill: white, weight: "bold")[Exigences / Besoins],

    [Alexandre DUBOIS],
    [CEO],
    [Protection réputation, continuité, conformité],
    [Reporting clair, alertes critiques, arbitrages budgétaires],

    [Dr. Lena ROSTOVA],
    [CTO],
    [Sécurité du code, protection IP, DevSecOps],
    [Intégration transparente, pas de blocage R&D],

    [Marco ROSSI], [COO], [Disponibilité production, sécurité OT], [Continuité Chambéry, plans de reprise],
    [Claire DELACROIX], [CFO], [Maîtrise des coûts, assurance cyber], [Budget prévisible, ROI des investissements],
    [Sarah AL-FAYED],
    [CCO],
    [Réassurance clients, conformité contractuelle],
    [Certifications, réponses aux questionnaires],

    [Mei Lin ZHAO], [CISO], [Moyens adéquats, indépendance, accès COMEX], [Budget, équipe, outils, soutien direction],
    [Marc TIBERI], [CSO], [Protection données stratégiques, export control], [Classification, contrôle accès sensibles],
    [Béatrice MOREAU],
    [Head of Legal],
    [Conformité RGPD, II 901, propriété intellectuelle],
    [Documentation, processus audités],

    [David CHEN],
    [HR Director],
    [Sensibilisation, clauses confidentialité],
    [Programmes formation, suivi habilitations],
  )
]

== Équipe SSI

L'équipe SSI, composée de 6 personnes, constitue le bras armé de la gouvernance cyber. Ses attentes principales sont :

- Moyens techniques et humains adaptés à la croissance
- Formation continue et accès aux certifications
- Visibilité sur la roadmap business pour anticiper les besoins
- Soutien de la direction en cas de conflit avec les métiers

La composition détaillée de l'équipe est documentée dans le document NOV-SSI-2025-002 (Organisation et gouvernance SSI).

== Départements métiers

#block(
  stroke: 1pt + novatics-gray-line,
  radius: 6pt,
  clip: true,
  width: 100%,
)[
  #set text(size: 8pt)
  #table(
    columns: (22%, 10%, 35%, 33%),
    stroke: 0.5pt + novatics-gray-line,
    inset: 6pt,
    fill: (_, row) => if row == 0 { novatics-petrol } else { none },
    align: (left, center, left, left),
    text(fill: white, weight: "bold")[Département],
    text(fill: white, weight: "bold")[Effectif],
    text(fill: white, weight: "bold")[Attentes SSI],
    text(fill: white, weight: "bold")[Risques spécifiques],

    [R&D / Engineering], [28], [Outils fluides, pas de friction sur le code], [Vol IP, compromission pipeline CI/CD],
    [Production], [18], [Continuité ligne assemblage, accès OT], [Sabotage industriel, arrêt production],
    [Sales & Marketing], [9], [Mobilité internationale, accès CRM], [Vol d'appareils, espionnage commercial],
    [Finance & Admin], [8], [Confidentialité données financières], [Fraude au président, fuite données],
    [Legal & Compliance], [2], [Archivage sécurisé, traçabilité], [Perte preuves, non-conformité],
    [HR & Recruitment], [3], [Protection données RH, habilitations], [Usurpation identité, fuite données personnelles],
    [Strategy & BD], [2], [Confidentialité projets M&A], [Fuite informations stratégiques],
    [Customer Success], [5], [Accès données clients, support terrain], [Compromission données missions],
  )
]

== Collaborateurs par site

La répartition géographique des effectifs implique des contraintes SSI spécifiques :

#block(
  stroke: 1pt + novatics-gray-line,
  radius: 6pt,
  clip: true,
  width: 100%,
)[
  #set text(size: 8pt)
  #table(
    columns: (20%, 12%, 35%, 33%),
    stroke: 0.5pt + novatics-gray-line,
    inset: 6pt,
    fill: (_, row) => if row == 0 { novatics-petrol } else { none },
    align: (left, center, left, left),
    text(fill: white, weight: "bold")[Site],
    text(fill: white, weight: "bold")[Effectif],
    text(fill: white, weight: "bold")[Spécificités SSI],
    text(fill: white, weight: "bold")[Contraintes],

    [Toulouse (Siège)], [62], [SI principal, Lab DR (futur), SOC], [Périmètre II 901, données DR],
    [Chambéry (Usine)], [18], [OT critique, réseau isolé, tests robots], [Convergence IT/OT, accès physique],
    [Tokyo], [2], [Accès distant, données commerciales APAC], [Réglementation japonaise, décalage horaire],
    [San Francisco], [2], [Accès distant, données commerciales US], [CCPA, FedRAMP (si FEMA)],
    [Lima], [1], [Accès distant, opérations terrain LATAM], [Connectivité, zones de crise],
  )
]

== Freelancers et sous-traitants

Novatics emploie 12 freelancers sur des missions actives, représentant un risque spécifique de fuite de données ou d'accès non contrôlé.

#block(
  stroke: 1pt + novatics-gray-line,
  radius: 6pt,
  clip: true,
  width: 100%,
)[
  #set text(size: 8pt)
  #table(
    columns: (25%, 15%, 30%, 30%),
    stroke: 0.5pt + novatics-gray-line,
    inset: 6pt,
    fill: (_, row) => if row == 0 { novatics-petrol } else { none },
    align: (left, center, left, left),
    text(fill: white, weight: "bold")[Catégorie],
    text(fill: white, weight: "bold")[Nombre],
    text(fill: white, weight: "bold")[Accès SI],
    text(fill: white, weight: "bold")[Mesures de contrôle],

    [Développeurs Software], [4], [GitLab, environnement dev], [NDA, revue code, accès limités],
    [Industrial Designers], [3], [CAO, plans mécaniques], [NDA, watermarking, export contrôlé],
    [Traducteurs], [2], [Documents marketing], [Documents non sensibles uniquement],
    [Consultants Regulatory], [2], [Documentation conformité], [NDA, accès lecture seule],
    [Consultant Fundraising], [1], [Données financières agrégées], [NDA renforcé, dataroom sécurisée],
  )
]

#pagebreak()

// =============================================================================
// CHAPITRE 3 : PARTIES PRENANTES EXTERNES - CLIENTS
// =============================================================================

= Parties prenantes externes : Clients

== Segmentation client

Les clients de Novatics se répartissent en trois segments distincts, avec des exigences SSI croissantes :

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
      #text(weight: "bold", fill: novatics-cyan)[B2G - Gouvernements]
      #v(6pt)
      #set text(size: 9pt)
      DGA, Protection Civile, FEMA \
      Exigences : II 901, habilitations \
      CA 2025 : ~45%
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
      #text(weight: "bold", fill: novatics-orange)[ONG - Humanitaire]
      #v(6pt)
      #set text(size: 9pt)
      IFRC, MSF, ONU OCHA \
      Exigences : Confidentialité missions \
      CA 2025 : ~25%
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
      #text(weight: "bold", fill: novatics-petrol)[B2B - Industriels]
      #v(6pt)
      #set text(size: 9pt)
      EDF, TotalEnergies, Tokyo Metro \
      Exigences : ISO 27001, audits \
      CA 2025 : ~30%
    ]
  ],
)

== Clients gouvernementaux (B2G)

#block(
  stroke: 1pt + novatics-gray-line,
  radius: 6pt,
  clip: true,
  width: 100%,
)[
  #set text(size: 8pt)
  #table(
    columns: (18%, 15%, 30%, 22%, 15%),
    stroke: 0.5pt + novatics-gray-line,
    inset: 6pt,
    fill: (_, row) => if row == 0 { novatics-petrol } else { none },
    align: (left, right, left, left, center),
    text(fill: white, weight: "bold")[Client],
    text(fill: white, weight: "bold")[CA annuel],
    text(fill: white, weight: "bold")[Exigences SSI],
    text(fill: white, weight: "bold")[Contact référent],
    text(fill: white, weight: "bold")[Criticité],

    [DGA], [~1,2 M€], [II 901, habilitations, homologation DR], [Col. Isabelle Marchand], [#criticality("Critique")],
    [Protection Civile FR], [~400 k€], [RGS, RGPD, marchés publics], [DGSCGC], [#criticality("Élevé")],
    [FEMA (négociation)], [(12 M\$ prévu)], [FedRAMP, NIST 800-53], [Emergency Management], [#criticality("Élevé")],
    [Tokyo Metro], [~850 k€], [ISO 27001, réglementation JP], [Security Division], [#criticality("Élevé")],
    [SDIS (multiples)], [~500 k€], [RGPD, marchés publics], [Services départementaux], [#criticality("Modéré")],
  )
]

#callout(title: "Focus : Contrat DGA - Exigences spécifiques", type: "critical")[
  Le contrat DGA (Programme N-RECON) impose des exigences de sécurité de niveau Défense :

  - *Homologation II 901* : Mise en conformité du SI pour traitement données DR
  - *Habilitations personnel* : Enquête DGSI pour accès aux informations classifiées
  - *Cloisonnement physique* : Lab DR isolé du réseau corporate
  - *Audits DGA-MI* : Contrôles réguliers par la Direction Générale de l'Armement

  Non-conformité = perte du contrat (4,8 M€ sur 4 ans).
]

== Clients ONG et humanitaires

#block(
  stroke: 1pt + novatics-gray-line,
  radius: 6pt,
  clip: true,
  width: 100%,
)[
  #set text(size: 8pt)
  #table(
    columns: (22%, 15%, 33%, 30%),
    stroke: 0.5pt + novatics-gray-line,
    inset: 6pt,
    fill: (_, row) => if row == 0 { novatics-petrol } else { none },
    align: (left, right, left, left),
    text(fill: white, weight: "bold")[Client],
    text(fill: white, weight: "bold")[CA annuel],
    text(fill: white, weight: "bold")[Exigences SSI],
    text(fill: white, weight: "bold")[Enjeux spécifiques],

    [Croix-Rouge Int. (IFRC)], [~1,25 M€], [Confidentialité missions, RGPD], [Données victimes, zones de conflit],
    [MSF], [180 k€], [Neutralité, protection sources], [Données médicales (HDS potentiel)],
    [ONU OCHA], [Partenariat], [Politiques ONU, données sensibles], [Zones de guerre, acteurs multiples],
  )
]

*Enjeux SSI spécifiques au secteur humanitaire :*

- Protection des données de victimes (localisation, images, état de santé)
- Risque de détournement d'informations par des acteurs hostiles
- Neutralité et non-utilisation des données à des fins militaires
- Conformité avec les politiques de protection des données des ONG partenaires

== Clients B2B industriels

#block(
  stroke: 1pt + novatics-gray-line,
  radius: 6pt,
  clip: true,
  width: 100%,
)[
  #set text(size: 8pt)
  #table(
    columns: (20%, 15%, 35%, 30%),
    stroke: 0.5pt + novatics-gray-line,
    inset: 6pt,
    fill: (_, row) => if row == 0 { novatics-petrol } else { none },
    align: (left, right, left, left),
    text(fill: white, weight: "bold")[Client],
    text(fill: white, weight: "bold")[CA annuel],
    text(fill: white, weight: "bold")[Exigences SSI],
    text(fill: white, weight: "bold")[Cas d'usage],

    [EDF], [320 k€], [Exigences OIV, sites nucléaires], [Inspection centrales (capteurs radiation)],
    [TotalEnergies], [280 k€], [HSE, confidentialité sites], [Inspection installations pétrolières],
    [Veolia], [150 k€], [Continuité service public], [Gestion crise inondations],
  )
]

#pagebreak()

// =============================================================================
// CHAPITRE 4 : PARTIES PRENANTES EXTERNES - FOURNISSEURS
// =============================================================================

= Parties prenantes externes : Fournisseurs

== Fournisseurs critiques

Les fournisseurs identifiés ci-dessous représentent des dépendances stratégiques dont la défaillance impacterait directement la continuité d'activité ou la sécurité.

#block(
  stroke: 1pt + novatics-gray-line,
  radius: 6pt,
  clip: true,
  width: 100%,
)[
  #set text(size: 8pt)
  #table(
    columns: (15%, 22%, 25%, 23%, 15%),
    stroke: 0.5pt + novatics-gray-line,
    inset: 6pt,
    fill: (_, row) => if row == 0 { novatics-petrol } else { none },
    align: (left, left, left, left, center),
    text(fill: white, weight: "bold")[Fournisseur],
    text(fill: white, weight: "bold")[Service],
    text(fill: white, weight: "bold")[Impact si défaillance],
    text(fill: white, weight: "bold")[Mesures contractuelles],
    text(fill: white, weight: "bold")[Criticité],

    [AWS], [Hébergement Cloud], [Perte Novatics Cloud, télémétrie], [SLA 99.95%, RGPD DPA], [#criticality("Critique")],
    [NVIDIA], [GPU Jetson (robots)], [Arrêt production robots], [Stock tampon 3 mois], [#criticality("Critique")],
    [Thales], [Modules radio sécurisés], [Blocage production DGA], [Contrat-cadre, dualité], [#criticality("Élevé")],
    [Intel], [Processeurs embarqués], [Retard production], [Multi-sourcing validé], [#criticality("Élevé")],
    [Scaleway], [Backup cloud France], [Perte redondance], [SLA 99.9%], [#criticality("Modéré")],
    [GitLab SaaS], [Pipeline CI/CD], [Blocage développement], [Plan Premium, backup], [#criticality("Élevé")],
  )
]

== Exigences SSI envers les fournisseurs

Conformément aux bonnes pratiques de gestion des tiers (ISO 27001 Annexe A.15), Novatics impose des exigences de sécurité contractuelles :

*Fournisseurs critiques (AWS, NVIDIA, Thales) :*
- Certifications ISO 27001 ou équivalent exigées
- Clause d'audit avec droit d'accès sur préavis
- Notification d'incidents sous 24h
- Plan de continuité documenté
- Conformité RGPD (DPA signé)

*Fournisseurs standards :*
- NDA systématique
- Clause de confidentialité renforcée
- Vérification annuelle des pratiques

== Sous-traitants spécialisés

#block(
  stroke: 1pt + novatics-gray-line,
  radius: 6pt,
  clip: true,
  width: 100%,
)[
  #set text(size: 8pt)
  #table(
    columns: (25%, 30%, 25%, 20%),
    stroke: 0.5pt + novatics-gray-line,
    inset: 6pt,
    fill: (_, row) => if row == 0 { novatics-petrol } else { none },
    align: (left, left, left, left),
    text(fill: white, weight: "bold")[Catégorie],
    text(fill: white, weight: "bold")[Prestataires types],
    text(fill: white, weight: "bold")[Données accessibles],
    text(fill: white, weight: "bold")[Contrôles],

    [Audit cybersécurité], [Cabinets PASSI], [Accès privilégiés SI], [Convention audit, habilitations],
    [Conseil réglementaire], [Avocats, consultants], [Contrats, brevets], [NDA renforcé],
    [Maintenance OT], [Intégrateurs industriels], [Accès réseau Chambéry], [Supervision accès, logs],
    [Hébergement DR (futur)], [Prestataire qualifié ANSSI], [Données classifiées], [II 901, audits DGA],
  )
]

#pagebreak()

// =============================================================================
// CHAPITRE 5 : PARTIES PRENANTES EXTERNES - PARTENAIRES
// =============================================================================

= Parties prenantes externes : Partenaires

== Partenaires stratégiques

Les partenariats stratégiques combinent souvent investissement capitalistique et collaboration technologique.

#block(
  stroke: 1pt + novatics-gray-line,
  radius: 6pt,
  clip: true,
  width: 100%,
)[
  #set text(size: 8pt)
  #table(
    columns: (20%, 25%, 30%, 25%),
    stroke: 0.5pt + novatics-gray-line,
    inset: 6pt,
    fill: (_, row) => if row == 0 { novatics-petrol } else { none },
    align: (left, left, left, left),
    text(fill: white, weight: "bold")[Partenaire],
    text(fill: white, weight: "bold")[Nature relation],
    text(fill: white, weight: "bold")[Domaine collaboration],
    text(fill: white, weight: "bold")[Exigences SSI mutuelles],

    [Airbus D&S],
    [Investisseur + technologique],
    [Communication satellite, distribution],
    [Certification commune, NDA cross],

    [Thales Group],
    [Partenariat cybersécurité],
    [Modules crypto, protocoles sécurisés],
    [Certifications ANSSI conjointes],

    [ONU OCHA], [Partenaire technologique], [Pré-positionnement, formation], [Politiques ONU, neutralité],
  )
]

== Partenaires académiques

#block(
  stroke: 1pt + novatics-gray-line,
  radius: 6pt,
  clip: true,
  width: 100%,
)[
  #set text(size: 8pt)
  #table(
    columns: (20%, 35%, 25%, 20%),
    stroke: 0.5pt + novatics-gray-line,
    inset: 6pt,
    fill: (_, row) => if row == 0 { novatics-petrol } else { none },
    align: (left, left, left, left),
    text(fill: white, weight: "bold")[Institution],
    text(fill: white, weight: "bold")[Collaboration],
    text(fill: white, weight: "bold")[Données échangées],
    text(fill: white, weight: "bold")[Protection PI],

    [LAAS-CNRS],
    [Robotique autonome, 2 doctorants CIFRE],
    [Algorithmes, datasets],
    [Accord PI, publications contrôlées],

    [ISAE-SUPAERO], [Stagiaires (5-8/an), projets étudiants], [Projets non sensibles], [NDA stagiaires],
    [MIT CSAIL], [Échanges chercheurs, co-publications], [Recherche fondamentale], [Accord inter-institutionnel],
  )
]

*Risques SSI spécifiques aux partenariats académiques :*

- Publication prématurée de résultats sensibles
- Accès d'étudiants à des données confidentielles
- Transfert de connaissances vers des pays tiers
- Dual-use research concerns (double usage civil/militaire)

== Investisseurs

#block(
  stroke: 1pt + novatics-gray-line,
  radius: 6pt,
  clip: true,
  width: 100%,
)[
  #set text(size: 8pt)
  #table(
    columns: (25%, 18%, 30%, 27%),
    stroke: 0.5pt + novatics-gray-line,
    inset: 6pt,
    fill: (_, row) => if row == 0 { novatics-petrol } else { none },
    align: (left, right, left, left),
    text(fill: white, weight: "bold")[Investisseur],
    text(fill: white, weight: "bold")[Montant],
    text(fill: white, weight: "bold")[Attentes SSI],
    text(fill: white, weight: "bold")[Reporting attendu],

    [Bpifrance Digital Venture], [2,5 M€], [Conformité, maîtrise risques], [Due diligence annuelle],
    [Cathay Innovation], [1,5 M€], [Protection valorisation], [Reporting trimestriel],
    [Airbus Ventures], [600 k€], [Certifications, export control], [Synergies groupe Airbus],
    [Business Angels], [400 k€], [Pérennité, croissance], [Assemblée générale],
  )
]

*Enjeux SSI vis-à-vis des investisseurs :*

Les investisseurs constituent une partie prenante exigeante en matière de SSI :
- Due diligence cyber lors des levées de fonds
- Questionnaires sécurité annuels
- Impact d'un incident majeur sur la valorisation
- Exigences croissantes avec les réglementations (NIS2, DORA)

#pagebreak()

// =============================================================================
// CHAPITRE 6 : AUTORITÉS ET RÉGULATEURS
// =============================================================================

= Autorités et régulateurs

== Panorama réglementaire

#callout(title: "Environnement réglementaire complexe", type: "warning")[
  Novatics évolue à l'intersection de plusieurs régimes réglementaires : sécurité civile, défense, protection des données personnelles et secteur numérique critique. Cette situation impose une veille active et une coordination étroite entre les fonctions Legal, SSI et métiers.
]

#block(
  stroke: 1pt + novatics-gray-line,
  radius: 6pt,
  clip: true,
  width: 100%,
)[
  #set text(size: 8pt)
  #table(
    columns: (18%, 22%, 35%, 25%),
    stroke: 0.5pt + novatics-gray-line,
    inset: 6pt,
    fill: (_, row) => if row == 0 { novatics-petrol } else { none },
    align: (left, left, left, left),
    text(fill: white, weight: "bold")[Autorité],
    text(fill: white, weight: "bold")[Réglementation],
    text(fill: white, weight: "bold")[Obligations principales],
    text(fill: white, weight: "bold")[Échéances / Sanctions],

    [ANSSI], [NIS2, LPM, RGS], [Notification incidents 24h, mesures Art. 21], [Oct. 2024, sanctions 2% CA],
    [CNIL], [RGPD], [DPO, registre, AIPD], [En vigueur, 4% CA mondial],
    [DGA-MI], [II 901], [Homologation SI DR, audits], [Mi-2026 (projet)],
    [SGDSN], [IGI 1300], [Habilitations personnel], [Avant accès données DR],
    [Préfectures], [Habilitations], [Enquêtes administratives], [3-6 mois par personne],
    [SBDU (Export)], [Règlement dual-use], [Licences export, contrôle destination], [En vigueur],
  )
]

== Attentes des autorités

*ANSSI (Agence Nationale de la Sécurité des SI) :*
- Point de contact pour la conformité NIS2
- Autorité d'homologation pour les SI traitant des données DR
- Attentes : maturité cyber démontrée, notification d'incidents, coopération en cas de crise

*CNIL (Commission Nationale de l'Informatique et des Libertés) :*
- Supervision traitement données personnelles (victimes, employés)
- Attentes : registre des traitements à jour, AIPD pour données sensibles, DPO désigné

*DGA-MI (Direction Générale de l'Armement - Maîtrise de l'Information) :*
- Contrôle de la conformité II 901 pour le contrat N-RECON
- Attentes : homologation SI, cloisonnement, traçabilité, audits réguliers

== Interactions avec les autorités

#block(
  stroke: 1pt + novatics-gray-line,
  radius: 6pt,
  clip: true,
  width: 100%,
)[
  #set text(size: 8pt)
  #table(
    columns: (20%, 25%, 30%, 25%),
    stroke: 0.5pt + novatics-gray-line,
    inset: 6pt,
    fill: (_, row) => if row == 0 { novatics-petrol } else { none },
    align: (left, left, left, left),
    text(fill: white, weight: "bold")[Autorité],
    text(fill: white, weight: "bold")[Interlocuteur Novatics],
    text(fill: white, weight: "bold")[Fréquence contacts],
    text(fill: white, weight: "bold")[Canaux],

    [ANSSI], [Mei Lin ZHAO (CISO)], [À la demande, incidents], [Portail NIS2, téléphone],
    [CNIL], [Béatrice MOREAU (DPO)], [Annuel, sur incident], [Portail CNIL],
    [DGA-MI], [Mei Lin ZHAO + Thomas MERCIER], [Mensuel (projet N-RECON)], [COPIL, audits],
    [SGDSN/Préfectures], [David CHEN (HR)], [Sur demande habilitations], [Formulaires administratifs],
  )
]

#pagebreak()

// =============================================================================
// CHAPITRE 7 : ANALYSE POUVOIR / INTÉRÊT
// =============================================================================

= Analyse pouvoir / intérêt

== Méthodologie

L'analyse des parties prenantes selon la matrice pouvoir/intérêt (modèle de Mendelow) permet de prioriser les efforts d'engagement et de communication. Cet outil stratégique aide à déterminer où concentrer les ressources limitées de l'équipe SSI.

Chaque partie prenante est positionnée selon deux dimensions :

- *Pouvoir* : capacité à influencer les décisions SSI, à allouer des ressources, ou à impacter l'organisation (positivement ou négativement). Un régulateur comme l'ANSSI a un pouvoir élevé car il peut imposer des sanctions. Un investisseur a un pouvoir élevé car il peut conditionner un financement à des exigences de sécurité.

- *Intérêt* : niveau d'attention et d'implication dans les enjeux SSI de Novatics. Une équipe R&D manipulant du code sensible a un intérêt élevé car la sécurité impacte son quotidien. Un fournisseur de composants génériques a un intérêt faible car il n'est pas directement concerné par notre posture cyber.

== Matrice de positionnement

La matrice ci-dessous positionne les principales parties prenantes identifiées et définit la stratégie d'engagement appropriée pour chaque quadrant.

#figure(
  image("/docs/assets/schemas/B1-A1-C1-03-matrice-pouvoir-interet.png", width: 100%),
  caption: [Matrice pouvoir/intérêt des parties prenantes SSI (modèle de Mendelow)],
)

#pagebreak()

== Description des quadrants

Chaque quadrant de la matrice correspond à une stratégie d'engagement spécifique, adaptée au profil des parties prenantes qui s'y trouvent.

=== Gérer de près (Pouvoir élevé / Intérêt élevé)

Ces parties prenantes sont les plus critiques. Elles ont à la fois la capacité d'influencer significativement l'organisation et un intérêt direct pour les enjeux SSI. Elles doivent être impliquées activement dans les décisions, informées en priorité et consultées régulièrement.

*Exemples :* COMEX, DGA, ANSSI, CNIL, Croix-Rouge Internationale, AWS

*Actions :* COPIL mensuels dédiés, reporting personnalisé, alertes immédiates en cas d'incident, co-construction des politiques et processus, accès privilégié aux informations de sécurité.

=== Maintenir satisfait (Pouvoir élevé / Intérêt faible)

Ces acteurs peuvent avoir un impact majeur sur l'organisation mais ne s'intéressent pas au quotidien à la SSI. Il faut éviter de les surcharger d'informations tout en s'assurant que leurs attentes minimales sont satisfaites. Une mauvaise surprise (incident non anticipé, non-conformité) pourrait déclencher une réaction disproportionnée.

*Exemples :* Investisseurs, clients B2B industriels, SBDU (export control), fournisseurs de composants critiques

*Actions :* Rapports trimestriels synthétiques, conformité aux engagements contractuels (SLA, certifications), anticipation des audits, communication proactive en cas de changement majeur.

=== Tenir informé (Pouvoir faible / Intérêt élevé)

Ces parties prenantes sont directement concernées par la SSI au quotidien mais n'ont pas le pouvoir de décision. Elles sont souvent les premières impactées par les mesures de sécurité et peuvent devenir des relais d'information précieux ou, à l'inverse, des sources de résistance au changement.

*Exemples :* Équipe SSI, départements métiers (R&D, Production), partenaires technologiques, doctorants CIFRE

*Actions :* Newsletter SSI régulière, formations et sensibilisation, tableaux de bord accessibles, canaux de feedback pour remonter les irritants, implication dans les tests et la validation des nouvelles mesures.

=== Surveiller (Pouvoir faible / Intérêt faible)

Ces acteurs n'ont ni influence significative ni préoccupation particulière pour la SSI. Un investissement minimal suffit : s'assurer que les bases sont couvertes (NDA, accès limités) et activer une communication plus soutenue uniquement si leur situation évolue.

*Exemples :* Freelancers non techniques, traducteurs, partenaires académiques éloignés, fournisseurs secondaires

*Actions :* NDA à jour, vérifications périodiques des accès, veille légère sur les évolutions de leur situation, escalade si changement de périmètre.

#pagebreak()

== Stratégies d'engagement

#block(
  stroke: 1pt + novatics-gray-line,
  radius: 6pt,
  clip: true,
  width: 100%,
)[
  #set text(size: 8pt)
  #table(
    columns: (22%, 38%, 40%),
    stroke: 0.5pt + novatics-gray-line,
    inset: 8pt,
    fill: (_, row) => if row == 0 { novatics-petrol } else { none },
    align: (left, left, left),
    text(fill: white, weight: "bold")[Quadrant],
    text(fill: white, weight: "bold")[Stratégie],
    text(fill: white, weight: "bold")[Actions concrètes],

    [Gérer de près],
    [Engagement actif, communication bidirectionnelle, implication dans les décisions],
    [COPIL mensuels, reporting dédié, alertes immédiates, co-construction PSSI],

    [Maintenir satisfait],
    [Information régulière, respect des engagements contractuels],
    [Rapports trimestriels, conformité SLA, questionnaires sécurité],

    [Tenir informé],
    [Communication descendante, sensibilisation],
    [Newsletter SSI, formations, tableaux de bord accessibles],

    [Surveiller], [Veille légère, activation si nécessaire], [NDA à jour, vérifications périodiques],
  )
]

#pagebreak()

// =============================================================================
// CHAPITRE 8 : SYNTHÈSE ET PRIORISATION
// =============================================================================

= Synthèse et priorisation

== Top 10 des parties prenantes prioritaires

Sur la base de l'analyse pouvoir/intérêt et des enjeux SSI identifiés, les parties prenantes suivantes sont considérées comme prioritaires :

#block(
  stroke: 1pt + novatics-gray-line,
  radius: 6pt,
  clip: true,
  width: 100%,
)[
  #set text(size: 8pt)
  #table(
    columns: (8%, 22%, 25%, 30%, 15%),
    stroke: 0.5pt + novatics-gray-line,
    inset: 6pt,
    fill: (_, row) => if row == 0 { novatics-petrol } else { none },
    align: (center, left, left, left, center),
    text(fill: white, weight: "bold")[Rang],
    text(fill: white, weight: "bold")[Partie prenante],
    text(fill: white, weight: "bold")[Enjeu principal],
    text(fill: white, weight: "bold")[Action prioritaire],
    text(fill: white, weight: "bold")[Criticité],

    [1], [DGA], [Conformité II 901, contrat 4,8 M€], [Projet Lab DR, homologation], [#criticality("Critique")],
    [2],
    [ANSSI],
    [Conformité NIS2, incidents],
    [Déclaration entité, processus notification],
    [#criticality("Critique")],

    [3],
    [COMEX],
    [Gouvernance, budget, responsabilité],
    [Formation NIS2, reporting mensuel],
    [#criticality("Critique")],

    [4], [Croix-Rouge Int.], [Données victimes, missions], [Chiffrement, accès contrôlé], [#criticality("Élevé")],
    [5], [CNIL], [RGPD, données personnelles], [Registre à jour, AIPD], [#criticality("Élevé")],
    [6], [AWS], [Disponibilité Cloud, données], [Revue SLA, plan reprise], [#criticality("Élevé")],
    [7], [Équipe SSI], [Capacité opérationnelle], [Recrutement, formation, outils], [#criticality("Élevé")],
    [8], [R&D / Engineering], [Protection IP, DevSecOps], [Pipeline sécurisé, sensibilisation], [#criticality("Élevé")],
    [9], [Investisseurs], [Due diligence, valorisation], [Certifications, rapport maturité], [#criticality("Modéré")],
    [10],
    [Production Chambéry],
    [Continuité OT, sécurité physique],
    [Cloisonnement IT/OT, PCA],
    [#criticality("Modéré")],
  )
]

== Plan de communication SSI

#block(
  stroke: 1pt + novatics-gray-line,
  radius: 6pt,
  clip: true,
  width: 100%,
)[
  #set text(size: 8pt)
  #table(
    columns: (22%, 20%, 30%, 28%),
    stroke: 0.5pt + novatics-gray-line,
    inset: 6pt,
    fill: (_, row) => if row == 0 { novatics-petrol } else { none },
    align: (left, left, left, left),
    text(fill: white, weight: "bold")[Audience],
    text(fill: white, weight: "bold")[Fréquence],
    text(fill: white, weight: "bold")[Contenu],
    text(fill: white, weight: "bold")[Canal],

    [COMEX], [Mensuel], [Tableau de bord SSI, incidents, conformité], [COPIL COMEX, slides],
    [DGA/ANSSI], [Trimestriel + incidents], [Avancement projet, conformité], [COPIL projet, portails officiels],
    [Clients B2G/B2B], [Annuel + sur demande], [Réponses questionnaires, certifications], [Emails, dataroom],
    [Équipe SSI], [Hebdomadaire], [Opérations, incidents, priorités], [Standup, Slack \#ssi],
    [Tous collaborateurs], [Trimestriel], [Sensibilisation, bonnes pratiques], [Newsletter, e-learning],
    [Fournisseurs critiques], [Annuel], [Revue sécurité, conformité contractuelle], [Réunion, audit],
  )
]

#pagebreak()

// =============================================================================
// ANNEXE A : GLOSSAIRE
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
    columns: (22%, 78%),
    stroke: 0.5pt + novatics-gray-line,
    inset: 8pt,
    fill: (_, row) => if row == 0 { novatics-petrol } else { none },
    align: (left, left),
    text(fill: white, weight: "bold")[Terme], text(fill: white, weight: "bold")[Définition],
    [B2B], [Business to Business - Ventes entre entreprises],
    [B2G], [Business to Government - Ventes aux administrations publiques],
    [CIFRE], [Convention Industrielle de Formation par la Recherche],
    [DGSCGC], [Direction Générale de la Sécurité Civile et de la Gestion des Crises],
    [DPA], [Data Processing Agreement - Accord de traitement des données],
    [DR], [Diffusion Restreinte - Niveau de classification],
    [Due diligence], [Audit préalable (notamment lors d'investissements)],
    [FedRAMP], [Federal Risk and Authorization Management Program (US)],
    [HDS], [Hébergement de Données de Santé],
    [IFRC], [International Federation of Red Cross and Red Crescent Societies],
    [Matrice de Mendelow], [Outil d'analyse des parties prenantes selon pouvoir/intérêt],
    [MSF], [Médecins Sans Frontières],
    [NDA], [Non-Disclosure Agreement - Accord de confidentialité],
    [OCHA], [Office for the Coordination of Humanitarian Affairs (ONU)],
    [OIV], [Opérateur d'Importance Vitale],
    [PASSI], [Prestataire d'Audit de la Sécurité des SI (qualification ANSSI)],
    [RGS], [Référentiel Général de Sécurité],
    [SBDU], [Service des Biens à Double Usage (contrôle export)],
    [SGDSN], [Secrétariat Général de la Défense et de la Sécurité Nationale],
    [SLA], [Service Level Agreement - Accord de niveau de service],
  )
]

#pagebreak()

// =============================================================================
// ANNEXE B : REGISTRE COMPLET
// =============================================================================

= Annexe B : Registre synthétique

Le tableau ci-dessous fournit une vue consolidée de toutes les parties prenantes identifiées. Les indicateurs de pouvoir et d'intérêt sont représentés par un code couleur pour faciliter la lecture rapide.

#v(0.5em)

#grid(
  columns: (1fr, 1fr, 1fr),
  gutter: 20pt,
  [
    #set text(size: 8pt)
    #box(fill: color-critical, width: 10pt, height: 10pt, radius: 50%) #h(4pt) Élevé
  ],
  [
    #set text(size: 8pt)
    #box(fill: novatics-orange, width: 10pt, height: 10pt, radius: 50%) #h(4pt) Modéré
  ],
  [
    #set text(size: 8pt)
    #box(fill: novatics-gray, width: 10pt, height: 10pt, radius: 50%) #h(4pt) Faible
  ],
)

#v(0.5em)

#block(
  stroke: 1pt + novatics-gray-line,
  radius: 6pt,
  clip: true,
  width: 100%,
)[
  #set text(size: 7pt)
  #table(
    columns: (17%, 12%, 23%, 23%, 12%, 13%),
    stroke: 0.5pt + novatics-gray-line,
    inset: 5pt,
    fill: (_, row) => if row == 0 { novatics-petrol } else { none },
    align: (left, left, left, left, center, center),
    text(fill: white, weight: "bold")[Partie prenante],
    text(fill: white, weight: "bold")[Catégorie],
    text(fill: white, weight: "bold")[Attente principale],
    text(fill: white, weight: "bold")[Contact Novatics],
    text(fill: white, weight: "bold")[Pouvoir],
    text(fill: white, weight: "bold")[Intérêt],

    // Internes
    [COMEX],
    [Interne],
    [Gouvernance, conformité],
    [CISO],
    [#box(fill: color-critical, width: 8pt, height: 8pt, radius: 50%)],
    [#box(fill: color-critical, width: 8pt, height: 8pt, radius: 50%)],

    [Équipe SSI],
    [Interne],
    [Moyens, reconnaissance],
    [CISO],
    [#box(fill: novatics-orange, width: 8pt, height: 8pt, radius: 50%)],
    [#box(fill: color-critical, width: 8pt, height: 8pt, radius: 50%)],

    [R&D/Engineering],
    [Interne],
    [Fluidité, protection IP],
    [CISO + CTO],
    [#box(fill: novatics-orange, width: 8pt, height: 8pt, radius: 50%)],
    [#box(fill: novatics-orange, width: 8pt, height: 8pt, radius: 50%)],

    [Production Chambéry],
    [Interne],
    [Continuité OT],
    [CISO + COO],
    [#box(fill: novatics-orange, width: 8pt, height: 8pt, radius: 50%)],
    [#box(fill: novatics-orange, width: 8pt, height: 8pt, radius: 50%)],

    // Clients B2G
    [DGA],
    [Client B2G],
    [II 901, homologation],
    [CISO + PM],
    [#box(fill: color-critical, width: 8pt, height: 8pt, radius: 50%)],
    [#box(fill: color-critical, width: 8pt, height: 8pt, radius: 50%)],

    [Protection Civile],
    [Client B2G],
    [RGPD, disponibilité],
    [CCO],
    [#box(fill: novatics-orange, width: 8pt, height: 8pt, radius: 50%)],
    [#box(fill: novatics-orange, width: 8pt, height: 8pt, radius: 50%)],

    [FEMA],
    [Client B2G],
    [FedRAMP],
    [CCO SF],
    [#box(fill: color-critical, width: 8pt, height: 8pt, radius: 50%)],
    [#box(fill: novatics-orange, width: 8pt, height: 8pt, radius: 50%)],

    // Clients ONG
    [Croix-Rouge Int.],
    [Client ONG],
    [Confidentialité missions],
    [CCO],
    [#box(fill: color-critical, width: 8pt, height: 8pt, radius: 50%)],
    [#box(fill: color-critical, width: 8pt, height: 8pt, radius: 50%)],

    [MSF],
    [Client ONG],
    [Neutralité, données],
    [CCO],
    [#box(fill: novatics-orange, width: 8pt, height: 8pt, radius: 50%)],
    [#box(fill: color-critical, width: 8pt, height: 8pt, radius: 50%)],

    // Régulateurs
    [ANSSI],
    [Régulateur],
    [NIS2, notification],
    [CISO],
    [#box(fill: color-critical, width: 8pt, height: 8pt, radius: 50%)],
    [#box(fill: color-critical, width: 8pt, height: 8pt, radius: 50%)],

    [CNIL],
    [Régulateur],
    [RGPD],
    [DPO],
    [#box(fill: color-critical, width: 8pt, height: 8pt, radius: 50%)],
    [#box(fill: color-critical, width: 8pt, height: 8pt, radius: 50%)],

    [DGA-MI],
    [Régulateur],
    [II 901],
    [CISO],
    [#box(fill: color-critical, width: 8pt, height: 8pt, radius: 50%)],
    [#box(fill: color-critical, width: 8pt, height: 8pt, radius: 50%)],

    // Partenaires
    [Airbus D&S],
    [Partenaire],
    [Synergies, certifications],
    [CSO],
    [#box(fill: novatics-orange, width: 8pt, height: 8pt, radius: 50%)],
    [#box(fill: novatics-orange, width: 8pt, height: 8pt, radius: 50%)],

    [Thales],
    [Partenaire],
    [Collaboration crypto],
    [CISO],
    [#box(fill: novatics-orange, width: 8pt, height: 8pt, radius: 50%)],
    [#box(fill: color-critical, width: 8pt, height: 8pt, radius: 50%)],

    // Fournisseurs
    [AWS],
    [Fournisseur],
    [Disponibilité, RGPD],
    [CISO],
    [#box(fill: color-critical, width: 8pt, height: 8pt, radius: 50%)],
    [#box(fill: novatics-orange, width: 8pt, height: 8pt, radius: 50%)],

    [NVIDIA],
    [Fournisseur],
    [Continuité appro.],
    [COO],
    [#box(fill: color-critical, width: 8pt, height: 8pt, radius: 50%)],
    [#box(fill: novatics-gray, width: 8pt, height: 8pt, radius: 50%)],

    // Investisseurs
    [Bpifrance],
    [Investisseur],
    [Due diligence, conformité],
    [CFO],
    [#box(fill: color-critical, width: 8pt, height: 8pt, radius: 50%)],
    [#box(fill: novatics-orange, width: 8pt, height: 8pt, radius: 50%)],
  )
]
