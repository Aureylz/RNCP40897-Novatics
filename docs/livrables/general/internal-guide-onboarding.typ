// =============================================================================
// NOVATICS - Guide d'intégration du nouvel arrivant
// Document interne - TLP:GREEN
// =============================================================================

#import "../../templates/novatics-template.typ": *

#show: novatics-doc.with(
  title: "Guide d'intégration",
  subtitle: "Bienvenue chez Novatics",
  doc-category: "Guide interne",
  reference: "NOV-INT-ONB-001",
  version: "3.1",
  date: datetime(year: 2025, month: 11, day: 25),
  author: "David CHEN, HR Director",
  tlp: "GREEN",
  logo-path: "/docs/assets/pictures/logo/novatics-full-logo.png",
)

// =============================================================================
// PRÉAMBULE
// =============================================================================

#version-history(
  (version: "1.0", date: "15/03/2021", changes: "Création initiale", author: "David CHEN"),
  (version: "2.0", date: "10/01/2024", changes: "Refonte complète - Expansion internationale", author: "David CHEN"),
  (
    version: "3.0",
    date: "15/11/2025",
    changes: "Mise à jour effectifs, produits et missions 2025",
    author: "David CHEN",
  ),
  (
    version: "3.1",
    date: "25/11/2025",
    changes: "Correction statistiques RH et historique 2025 (Contrat DGA)",
    author: "David CHEN",
  ),
)

#v(1em)

#approval-table((
  (role: "Rédacteur", name: "David CHEN", date: "25/11/2025"),
  (role: "Vérificateur", name: "Alexandre DUBOIS", date: "25/11/2025"),
  (role: "Approbateur", name: "Alexandre DUBOIS", date: "25/11/2025"),
))

#pagebreak()

#custom-outline()

#pagebreak()

// =============================================================================
// INTRODUCTION
// =============================================================================

= Bienvenue chez Novatics

#v(0.5em)

#align(center)[
  #image("/docs/assets/pictures/onboarding/hero/hero-about-robotics-lab-toulouse-engineers-2572x1536.png", width: 100%)
]

#v(0.5em)

#callout(title: "Un mot de notre fondateur", type: "info")[
  _"Bienvenue dans l'aventure Novatics. En rejoignant notre équipe, vous participez à une mission qui dépasse la simple innovation technologique : nous sauvons des vies. Chaque ligne de code, chaque composant assemblé, chaque client formé contribue à cette vision. Je suis convaincu que vous apporterez votre pierre à cet édifice."_

  #align(right)[— Alexandre DUBOIS, CEO & Fondateur]
]

Ce guide a été conçu pour vous accompagner dans votre intégration au sein de Novatics. Vous y trouverez l'ensemble des informations essentielles sur notre entreprise, notre histoire, nos produits, notre organisation et notre culture.

Nous vous encourageons à le parcourir attentivement et à le conserver comme référence tout au long de votre parcours chez nous.

#pagebreak()

// =============================================================================
// CHAPITRE 1 : QUI SOMMES-NOUS ?
// =============================================================================

= Qui sommes-nous ?

== Notre identité

#grid(
  columns: (1fr, 1fr, 1fr),
  gutter: 12pt,
  kpi-card("85", "Collaborateurs", accent: novatics-petrol),
  kpi-card("12,5M€", "CA 2025", accent: novatics-cyan),
  kpi-card("5", "Sites mondiaux", accent: novatics-orange),
)

#v(1em)

#metadata-table(
  ("Raison sociale", "Novatics SAS"),
  ("Forme juridique", "Société par Actions Simplifiée (SAS)"),
  ("SIRET", "842 123 456 00027"),
  ("Code NAF", "2829Z - Fabrication de machines et équipements divers"),
  ("Capital social", "1 200 000 €"),
  ("Date de création", "15 mars 2018"),
  ("Lieu de création", "Toulouse, France"),
  ("Fondateur & PDG", "Alexandre DUBOIS"),
)

#v(1em)

=== Siège social

#grid(
  columns: (1fr, 1fr),
  gutter: 20pt,
  [
    *Adresse :*

    12 Avenue de l'Aéronautique, Bâtiment Nova \
    Zone Aerospace, Quartier Labège \
    31400 Toulouse, France

    #v(1em)

    *Contact :*

    -- Téléphone : +33 5 61 42 78 90 \
    -- Urgences 24/7 : +33 5 61 42 78 99 \
    -- Email : contact\@novatics.io \
    -- Web : www.novatics.io
  ],
  [
    #image("/docs/assets/pictures/onboarding/hero/hero-contact-toulouse-campus-building-2572x1536.png", width: 100%)
  ],
)

#pagebreak()

== Notre mission et notre vision

=== Mission

#align(center)[
  #block(
    fill: novatics-gray-light,
    inset: 20pt,
    radius: 8pt,
    width: 90%,
  )[
    #text(size: 11pt, style: "italic", fill: novatics-petrol)[
      "Utiliser la robotique avancée pour sauver des vies lors de catastrophes naturelles et industrielles, en donnant aux équipes de secours les outils pour opérer dans des environnements trop dangereux pour l'homme."
    ]
  ]
]

Notre mission est claire : nous concevons, fabriquons et déployons des robots autonomes qui permettent aux secouristes d'intervenir plus efficacement, plus rapidement, et surtout plus sûrement. Là où un être humain risque sa vie, nos robots prennent le relais.

=== Vision 2030

#align(center)[
  #block(
    fill: novatics-cyan.transparentize(90%),
    stroke: 1pt + novatics-cyan,
    inset: 20pt,
    radius: 8pt,
    width: 90%,
  )[
    #text(size: 11pt, weight: "semibold", fill: novatics-petrol)[
      "Devenir le leader mondial de la robotique de sauvetage, avec un robot Novatics déployé dans chaque mission de catastrophe majeure sur la planète."
    ]
  ]
]

=== Notre signature

#block(
  fill: novatics-gray-light,
  radius: 8pt,
  inset: 20pt,
  width: 100%,
)[
  #align(center)[
    #text(style: "italic", size: 11pt, fill: novatics-petrol)[
      "Technology is meaningless unless it serves humanity."
    ]
    #v(8pt)
    #text(style: "italic", size: 11pt, fill: novatics-cyan)[
      "La technologie n'a de sens que si elle sert l'humanité."
    ]
  ]
]

Cette phrase résume notre philosophie. Nous ne créons pas de la technologie pour impressionner, mais pour servir. Chaque fonctionnalité, chaque innovation doit répondre à un besoin réel des équipes de terrain.

#pagebreak()

== Nos chiffres clés

#grid(
  columns: (1fr, 1fr, 1fr, 1fr),
  gutter: 10pt,
  kpi-card("150+", "Missions déployées", accent: novatics-petrol),
  kpi-card("32", "Pays d'intervention", accent: novatics-cyan),
  kpi-card("280+", "Robots produits", accent: novatics-orange),
  kpi-card("142", "Vies sauvées", accent: color-low),
)

#v(1em)

#block(
  stroke: 1pt + novatics-gray-line,
  radius: 6pt,
  clip: true,
  width: 100%,
)[
  #set text(size: 9pt)
  #table(
    columns: (50%, 50%),
    stroke: (x, y) => (
      bottom: 0.5pt + novatics-gray-line,
      left: if x > 0 { 0.5pt + novatics-gray-line } else { 0pt },
    ),
    inset: 10pt,
    fill: (_, row) => if row == 0 { novatics-petrol } else { none },
    align: (left, left),
    text(fill: white, weight: "bold")[Indicateur], text(fill: white, weight: "bold")[Valeur (Novembre 2025)],
    [Effectif total], [85 employés],
    [Sites opérationnels], [5 (3 continents)],
    [Chiffre d'affaires 2024], [8,2 M€],
    [Chiffre d'affaires projeté 2025], [12,5 M€],
    [Levées de fonds totales], [7,5 M€],
    [Taux de croissance annuel], [+45%],
    [Brevets déposés], [12],
    [Heures de vol cumulées (N-Eye)], [3 200+],
    [Heures d'exploration (N-Seeker)], [1 800+],
    [Taux de réussite mission], [94%],
  )
]

#pagebreak()

// =============================================================================
// CHAPITRE 2 : NOTRE HISTOIRE
// =============================================================================

= Notre histoire

== La genèse : un drame fondateur

#callout(title: "Été 2016 - L'événement déclencheur", type: "warning")[
  Alexandre DUBOIS, alors chef de projet pour Vinci Construction sur un tunnel alpin, est témoin d'un glissement de terrain catastrophique dans les Alpes autrichiennes. Une équipe de secouristes perd 3 membres en tentant d'accéder à des victimes ensevelies. Cette tragédie le convainc que la technologie robotique pourrait sauver ces sauveteurs.
]

En 2017, Alexandre mène une étude de marché approfondie sur 8 mois. Il rencontre les SDIS (Services Départementaux d'Incendie et de Secours) français, identifie le gap technologique majeur (les robots militaires sont inadaptés aux missions civiles), et établit ses premiers contacts avec le Dr. Lena Rostova, alors au MIT.

== Chronologie détaillée

=== 2018-2020 : Les débuts

*Mars 2018 - Incorporation*

Novatics SAS est créée le 15 mars 2018 avec un capital initial de 50 000 € (apport personnel d'Alexandre + 2 Business Angels). L'équipe s'installe dans un garage partagé à Labège (40 m², loyer 400 €/mois).

Les premiers recrutements :
- Dr. Lena ROSTOVA (CTO) - Ex-MIT, spécialiste en navigation autonome
- Thomas MERCIER - Lead Software Engineer
- Julie ARNAUD - Mechanical Engineer

Le prototype "Alpha-1", ancêtre du N-Eye, voit le jour au T2 2018. Les tests en carrières désaffectées révèlent les premiers défis : batteries insuffisantes, crashs par vent fort.

#v(1em)

*Fin 2018 - Premier financement*

Levée de fonds auprès de Business Angels (150 000 €) et subvention France 2030 via BPI France (120 000 €), soit un total de 270 000 €.

#v(1em)

*2019 - R&D intensive*

Le prototype "Alpha-2" réalise son premier vol stabilisé en janvier. En juin, une démonstration réussie devant le SDIS 31 (Haute-Garonne) valide le concept. L'équipe déménage à la Zone Aerospace Toulouse (300 m²) et compte désormais 8 personnes.

#v(1em)

*2020 - Résilience COVID*

Malgré la pandémie, l'équipe maintient le cap en télétravail. Le N-Eye Gen1 est développé, la certification CE est lancée, et les premières discussions avec la Protection Civile française s'engagent. Fin 2020 : 12 personnes.

#pagebreak()

=== 2021-2022 : L'industrialisation

*2021 - Premiers contrats*

-- Février 2021 : Première vente (2 N-Eye) à la Protection Civile des Bouches-du-Rhône : 32 000 € \
-- Mai 2021 : Embauche de Marco ROSSI (COO) - Ex-Renault, expert supply chain \
-- Septembre 2021 : Installation de la première ligne d'assemblage \
-- Novembre 2021 : Certification ISO 9001:2015 obtenue

Chiffre d'affaires 2021 : 420 000 € | Équipe : 18 personnes

*2022 - Scale-Up*

-- Janvier 2022 : Lancement du N-Seeker (robot terrestre) \
-- Mars 2022 : Contrat-cadre Protection Civile nationale : 1,2 M€ sur 3 ans \
-- Octobre 2022 : Expansion Toulouse à 800 m² \
-- Décembre 2022 : Première mission internationale (Syrie, via ONG)

Chiffre d'affaires 2022 : 2,1 M€ | Équipe : 28 personnes

=== 2023-2024 : L'expansion internationale

*2023 - L'année charnière*

#callout(title: "Série B : 5 millions d'euros levés", type: "success")[
  En janvier 2023, Novatics boucle sa Série B avec Bpifrance Digital Venture (2,5 M€) en lead, accompagné de Cathay Innovation (1,5 M€), Airbus Ventures (600 k€) et les Business Angels historiques (400 k€). Valorisation post-money : 23 M€.
]

*Février 2023 - Mission Turquie-Syrie : le tournant*

Le séisme de magnitude 7.8 frappe la région. Novatics déploie 12 N-Eye et 6 N-Seeker avec 8 opérateurs. Résultat : 47 victimes localisées, 23 secourues vivantes. La couverture médiatique internationale (CNN, BBC, Le Monde) propulse Novatics sur le devant de la scène.

En juin 2023, l'usine de Chambéry ouvre ses portes (1 200 m², investissement 1,2 M€) avec une capacité de 200 robots/an. Le N-Sonar (robot amphibie) est lancé en septembre.

Chiffre d'affaires 2023 : 4,8 M€ | Équipe : 48 personnes

*2024 - Internationalisation*

-- Mars 2024 : Premier contrat Japon (Tokyo Metro) : 850 000 € \
-- Juin 2024 : Certification FCC (États-Unis) obtenue \
-- Septembre 2024 : Ouverture bureau Tokyo (2 personnes) \
-- Octobre 2024 : Déploiement Hurricane Milton (Floride) - Couverture CNN en direct \
-- Novembre 2024 : Ouverture bureau San Francisco (2 personnes) \
-- Décembre 2024 : Marquage CE étendu à toute la gamme

Chiffre d'affaires 2024 : 8,2 M€ | Équipe : 72 personnes

#pagebreak()

=== 2025 : Maturité et reconnaissance

*Mars 2025 :* Ouverture bureau Lima, Pérou (1 personne)

*Avril 2025 :*
- *Contrat Croix-Rouge Internationale* : 2,5 M€ (25 N-Eye + 15 N-Seeker + 10 N-Sonar, formation 50 opérateurs)
- *Signature Contrat DGA (Défense)* : 4,8 M€ sur 4 ans (Programme N-RECON)

*Mai 2025 :* Déploiement séisme Myanmar (magnitude 7.2) - 31 survivants localisés

*Septembre 2025 :* Participation à MILIPOL Paris (salon sécurité civile)

*Octobre 2025 :* Partenariat officiel ONU OCHA (coordination humanitaire)

*Novembre 2025 :* Déploiement inondations Lima (12 véhicules submergés localisés, 8 personnes secourues)

Chiffre d'affaires projeté 2025 : 12,5 M€ | Équipe actuelle : 85 personnes

== Perspectives 2026 et au-delà

*Série C prévue Q2 2026 :* Objectif 10 M€, valorisation cible 45 M€

*Roadmap produits :*
- Q2 2026 : N-Eye Gen3 (autonomie 60 min)
- Q4 2026 : N-Seeker Gen2 (bras manipulateur)
- Q2 2027 : N-Swarm System (essaim de 4 robots coordonnés)

*Expansion géographique :*
- Q1 2026 : Bureau Madrid (Espagne/Portugal)
- Q3 2026 : Bureau Singapour (hub Asie du Sud-Est)
- 2027 : Bureau Dubai (Moyen-Orient/Afrique)

*Objectifs long terme :*
- 2026 : 120 employés, 18 M€ CA
- 2027 : 160 employés, 28 M€ CA
- 2030 : 350 employés, 80 M€ CA, leader mondial

#pagebreak()

// =============================================================================
// CHAPITRE 3 : NOTRE DIRECTION
// =============================================================================

= Notre direction

== Le Comité Exécutif

Notre entreprise est dirigée par un Comité Exécutif (COMEX) de 9 membres aux profils complémentaires. Vous trouverez ci-dessous la présentation de chacun d'entre eux.

#v(1em)

// Alexandre DUBOIS - CEO
#grid(
  columns: (100pt, 1fr),
  gutter: 20pt,
  [
    #image("/docs/assets/pictures/onboarding/team-members/ceo-alexandre-dubois-1856x2304.png", width: 100%)
  ],
  [
    === Alexandre DUBOIS
    *CEO & Fondateur*

    #metadata-table(
      ("Âge", "42 ans"),
      ("Formation", "INSA Lyon, Ingénieur Civil (2005)"),
      ("Expérience", "Chef de Projet Vinci Construction (2006-2012), Project Director Bouygues TP (2012-2018)"),
      ("Localisation", "Toulouse HQ"),
    )

    Alexandre est le visionnaire derrière Novatics. Fort de 12 ans d'expérience dans les grands travaux (tunnels alpins, barrages), il a fondé l'entreprise après avoir été témoin d'une tragédie lors d'une opération de sauvetage en montagne. Il pilote la stratégie globale, les relations investisseurs et porte la vision produit.

    *Contact :* alexandre.dubois\@novatics.io
  ],
)

#v(1em)

// Lena ROSTOVA - CTO
#grid(
  columns: (100pt, 1fr),
  gutter: 20pt,
  [
    #image("/docs/assets/pictures/onboarding/team-members/cto-lena-rostova-1856x2304.png", width: 100%)
  ],
  [
    === Dr. Lena ROSTOVA
    *CTO (Chief Technology Officer)*

    #metadata-table(
      ("Âge", "38 ans"),
      ("Formation", "PhD Robotics MIT (2013), MS MIPT Moscou (2009)"),
      (
        "Expérience",
        "Post-doc NASA JPL - Mars Rover (2013-2015), Senior Robotics Engineer Boston Dynamics (2015-2018)",
      ),
      ("Localisation", "Toulouse HQ"),
    )

    Lena dirige l'ensemble de la R&D et de l'architecture technique. Experte mondiale en navigation autonome et computer vision, elle compte 24 publications scientifiques et 3 brevets personnels. Elle a travaillé sur les rovers martiens de la NASA avant de rejoindre Novatics comme co-fondatrice technique.

    *Contact :* lena.rostova\@novatics.io
  ],
)

#pagebreak()

// Marco ROSSI - COO
#grid(
  columns: (100pt, 1fr),
  gutter: 20pt,
  [
    #image("/docs/assets/pictures/onboarding/team-members/coo-marco-rossi-1856x2304.png", width: 100%)
  ],
  [
    === Marco ROSSI
    *COO (Chief Operating Officer)*

    #metadata-table(
      ("Âge", "51 ans"),
      ("Formation", "Ingénieur ENSAM Paris (1996), MBA HEC (2002)"),
      ("Expérience", "Supply Chain Manager Renault (1996-2010), VP Operations Valeo (2010-2021)"),
      ("Localisation", "Split Toulouse / Chambéry"),
    )

    Marco supervise la production, la logistique, l'industrialisation et la qualité. Avec 25 ans d'expérience dans l'industrie automobile, il a structuré notre capacité de production à Chambéry et optimisé notre supply chain.

    *Sa devise :* _"L'innovation n'est utile que si elle peut être livrée en 24h."_

    *Contact :* marco.rossi\@novatics.io
  ],
)

#v(1em)

// Claire DELACROIX - CFO
#grid(
  columns: (100pt, 1fr),
  gutter: 20pt,
  [
    #image("/docs/assets/pictures/onboarding/team-members/cfo-claire-delacroix-1856x2304.png", width: 100%)
  ],
  [
    === Claire DELACROIX
    *CFO (Chief Financial Officer)*

    #metadata-table(
      ("Âge", "45 ans"),
      ("Formation", "HEC Paris (2003), Expert-Comptable (2006)"),
      ("Expérience", "Senior Auditor Deloitte (2003-2012), CFO startup DeepTech Quandela (2012-2020)"),
      ("Localisation", "Toulouse HQ"),
    )

    Claire pilote les finances, la comptabilité, les levées de fonds et les subventions. Son expérience en startup DeepTech lui permet de naviguer efficacement dans les cycles de financement et les exigences réglementaires.

    *Sa devise :* _"La pérennité financière est la clé de notre indépendance."_

    *Contact :* claire.delacroix\@novatics.io
  ],
)

#pagebreak()

// Sarah AL-FAYED - CCO
#grid(
  columns: (100pt, 1fr),
  gutter: 20pt,
  [
    #image("/docs/assets/pictures/onboarding/team-members/cco-sarah-al-fayed-1856x2304.png", width: 100%)
  ],
  [
    === Sarah AL-FAYED
    *CCO (Chief Commercial Officer)*

    #metadata-table(
      ("Âge", "40 ans"),
      ("Formation", "Sciences Po Paris (2007), MA Relations Internationales LSE (2009)"),
      ("Expérience", "Program Manager MSF (2009-2015), Business Development Airbus D&S (2015-2021)"),
      ("Localisation", "Split Toulouse / International"),
    )

    Sarah dirige les ventes B2B/B2G, les partenariats et l'expansion internationale. Son parcours unique entre humanitaire (MSF) et défense (Airbus) lui donne une compréhension profonde de nos deux marchés clés.

    *Sa devise :* _"Nous ne vendons pas des machines, nous bâtissons des alliances."_

    *Contact :* sarah.alfayed\@novatics.io
  ],
)

#v(1em)

// Mei Lin ZHAO - CISO
#grid(
  columns: (100pt, 1fr),
  gutter: 20pt,
  [
    #image("/docs/assets/pictures/onboarding/team-members/ciso-mei-lin-zhao-1856x2304.png", width: 100%)
  ],
  [
    === Mei Lin ZHAO
    *CISO (Chief Information Security Officer)*

    #metadata-table(
      ("Âge", "35 ans"),
      ("Formation", "PhD Cryptographie, Tsinghua University Beijing (2015)"),
      ("Expérience", "Security Engineer Thales (2015-2019), Lead Cybersecurity Atos Defense (2019-2022)"),
      ("Localisation", "Toulouse HQ"),
    )

    Mei Lin est responsable de la sécurité IT/OT, de la cryptographie et de la conformité RGPD. Sa double expertise défense (Thales, Atos) et académique (doctorat) garantit la protection de nos systèmes et de ceux de nos clients.

    *Sa devise :* _"Dans un monde connecté, un robot piraté est une arme."_

    *Contact :* mei-lin.zhao\@novatics.io
  ],
)

#pagebreak()

// Marc TIBERI - CSO
#grid(
  columns: (100pt, 1fr),
  gutter: 20pt,
  [
    #image("/docs/assets/pictures/onboarding/team-members/cso-marc-tiberi-1856x2304.png", width: 100%)
  ],
  [
    === Marc TIBERI
    *CSO (Chief Strategy Officer)*

    #metadata-table(
      ("Âge", "48 ans"),
      ("Formation", "X-Polytechnique (1998), MBA INSEAD (2004)"),
      ("Expérience", "Strategy Consultant McKinsey (2004-2015), VP Strategy Thales Group (2015-2022)"),
      ("Localisation", "Toulouse HQ"),
    )

    Marc pilote la stratégie long-terme, les opérations M&A et les partenariats stratégiques. Son passage chez McKinsey et Thales lui confère une vision globale des enjeux géopolitiques et industriels de notre secteur.

    *Contact :* marc.tiberi\@novatics.io
  ],
)

#v(1em)

// Béatrice MOREAU - Head of Legal
#grid(
  columns: (100pt, 1fr),
  gutter: 20pt,
  [
    #image("/docs/assets/pictures/onboarding/team-members/ho-legal-beatrice-moreau-1856x2304.png", width: 100%)
  ],
  [
    === Béatrice MOREAU
    *Head of Legal*

    #metadata-table(
      ("Âge", "44 ans"),
      ("Formation", "Master Droit, Paris 1 Panthéon-Sorbonne (2004), Avocate barreau Paris"),
      ("Expérience", "Avocate Cabinet Gide Loyrette Nouel (2004-2018), Head of Legal Safran Electronics (2018-2023)"),
      ("Localisation", "Toulouse HQ"),
    )

    Béatrice gère l'ensemble des aspects juridiques : propriété intellectuelle, contrats commerciaux, conformité réglementaire. Son expertise dans l'aéronautique et la défense est précieuse pour naviguer les complexités contractuelles de notre secteur.

    *Contact :* beatrice.moreau\@novatics.io
  ],
)

#pagebreak()

// David CHEN - HR Director
#grid(
  columns: (100pt, 1fr),
  gutter: 20pt,
  [
    #image("/docs/assets/pictures/onboarding/team-members/hr-director-david-chen-1856x2304.png", width: 100%)
  ],
  [
    === David CHEN
    *HR Director*

    #metadata-table(
      ("Âge", "39 ans"),
      ("Formation", "ESSEC Business School (2008), Master RH Dauphine (2010)"),
      ("Expérience", "HR Manager Airbus (2010-2019), Talent Director Criteo (2019-2023)"),
      ("Localisation", "Toulouse HQ"),
    )

    David pilote le recrutement, la formation, la culture d'entreprise et la GPEC. C'est lui qui a conçu ce guide d'intégration ! Son expérience chez Airbus et Criteo lui permet d'accompagner notre croissance rapide tout en préservant notre culture unique.

    *Contact :* david.chen\@novatics.io
  ],
)

#pagebreak()

// =============================================================================
// CHAPITRE 4 : NOS PRODUITS
// =============================================================================

= Nos produits

Novatics conçoit et fabrique trois gammes de robots autonomes, regroupées sous le nom "N-Series". Chaque robot répond à un besoin spécifique des équipes de secours et peut être déployé seul ou en coordination avec les autres.

== N-Eye : Reconnaissance aérienne

#grid(
  columns: (1fr, 1fr),
  gutter: 20pt,
  align: (center, center),
  [
    #align(center)[
      #image("/docs/assets/pictures/onboarding/existing-robots/novatics-n-eye-drone-studio-1892x1892.png", width: 100%)
    ]
  ],
  [
    #align(center)[
      #image(
        "/docs/assets/pictures/onboarding/existing-robots/novatics-n-eye-drone-landscape-2663x1452.png",
        width: 100%,
      )
    ]
  ],
)

Le N-Eye (référence NV-AIR-01) est notre drone quadcopter durci, conçu pour la reconnaissance aérienne post-catastrophe. C'est notre produit phare, avec plus de 140 unités produites à ce jour.

#metadata-table(
  ("Prix catalogue 2026", "14 950 €"),
  ("Poids", "4,5 kg (batterie incluse)"),
  ("Dimensions", "55 × 55 cm (replié : 30 × 20 cm)"),
  ("Autonomie", "40 minutes (batteries hot-swap)"),
  ("Vitesse maximale", "70 km/h (mode urgence)"),
  ("Résistance vent", "Classe 6 (jusqu'à 60 km/h)"),
  ("Altitude maximale", "3 000 m"),
  ("Portée vidéo", "8 km (crypté AES-256)"),
  ("Protection", "IP45 (pluie légère, poussière)"),
  ("Température", "-20°C à +50°C"),
)

#v(0.5em)

#grid(
  columns: (1fr, 1fr, 1fr, 1fr, 1fr),
  gutter: 8pt,
  [
    #align(center)[
      #image("/docs/assets/pictures/onboarding/icons/icon-thermal-camera-2048x2048.png", width: 40pt)
      #text(size: 7pt)[Caméra \ thermique]
    ]
  ],
  [
    #align(center)[
      #image("/docs/assets/pictures/onboarding/icons/icon-ai-detection-2048x2048.png", width: 40pt)
      #text(size: 7pt)[Détection \ IA]
    ]
  ],
  [
    #align(center)[
      #image("/docs/assets/pictures/onboarding/icons/icon-wind-resistant-2048x2048.png", width: 40pt)
      #text(size: 7pt)[Résistant \ au vent]
    ]
  ],
  [
    #align(center)[
      #image("/docs/assets/pictures/onboarding/icons/icon-battery-2048x2048.png", width: 40pt)
      #text(size: 7pt)[Batteries \ hot-swap]
    ]
  ],
  [
    #align(center)[
      #image("/docs/assets/pictures/onboarding/icons/icon-lidar-2048x2048.png", width: 40pt)
      #text(size: 7pt)[GPS RTK \ précision 2cm]
    ]
  ],
)

*Capteurs embarqués :* Caméra optique 12MP (zoom ×30), caméra thermique 640×512, télémètre laser (1 km), GPS RTK, IMU 6 axes, baromètre haute précision.

*Intelligence embarquée :* Détection automatique de formes humaines dans les débris, reconnaissance de signaux de détresse (agitation, fumée), cartographie 3D temps réel, évitement d'obstacles (SLAM).

*Cas d'usage :* Recherche aérienne post-séisme, évaluation rapide de dégâts, localisation de victimes en montagne, surveillance d'inondations.

#pagebreak()

== N-Seeker : Exploration terrestre

#grid(
  columns: (1fr, 1fr),
  gutter: 20pt,
  [
    #image("/docs/assets/pictures/onboarding/existing-robots/novatics-n-seeker-drone-studio-1826x1826.png", width: 100%)
  ],
  [
    #image(
      "/docs/assets/pictures/onboarding/existing-robots/novatics-n-seeker-drone-landscape-2592x1414.png",
      width: 100%,
    )
  ],
)

Le N-Seeker (référence NV-GND-01) est notre robot chenillé tout-terrain, conçu pour l'exploration de zones dangereuses au sol. Plus de 95 unités ont été produites.

#metadata-table(
  ("Prix catalogue 2026", "28 500 €"),
  ("Poids", "18 kg (batterie incluse)"),
  ("Dimensions", "75 × 50 × 30 cm"),
  ("Autonomie", "6 heures (mode patrouille), 3h (mode actif)"),
  ("Vitesse maximale", "8 km/h (terrain plat), 3 km/h (débris)"),
  ("Franchissement", "Obstacles 25 cm, pentes 45°"),
  ("Portée contrôle", "1,5 km (4G/5G : illimité)"),
  ("Protection", "IP67 (étanche 1 m, 30 min)"),
  ("Température", "-30°C à +60°C"),
)

#v(0.5em)

#grid(
  columns: (1fr, 1fr, 1fr, 1fr, 1fr),
  gutter: 8pt,
  [
    #align(center)[
      #image("/docs/assets/pictures/onboarding/icons/icon-lidar-2048x2048.png", width: 40pt)
      #text(size: 7pt)[LIDAR 3D \ 16 canaux]
    ]
  ],
  [
    #align(center)[
      #image("/docs/assets/pictures/onboarding/icons/icon-thermal-camera-2048x2048.png", width: 40pt)
      #text(size: 7pt)[Vision \ thermique]
    ]
  ],
  [
    #align(center)[
      #image("/docs/assets/pictures/onboarding/icons/icon-waterproof-2048x2048.png", width: 40pt)
      #text(size: 7pt)[Étanche \ IP67]
    ]
  ],
  [
    #align(center)[
      #image("/docs/assets/pictures/onboarding/icons/icon-mesh-network-2048x2048.png", width: 40pt)
      #text(size: 7pt)[Réseau \ mesh]
    ]
  ],
  [
    #align(center)[
      #image("/docs/assets/pictures/onboarding/icons/icon-ai-detection-2048x2048.png", width: 40pt)
      #text(size: 7pt)[Reconnaissance \ vocale]
    ]
  ],
)

*Capteurs embarqués :* 6 caméras HD 360° (vision panoramique), LIDAR 3D Velodyne Puck Lite (16 canaux), caméra thermique 320×240, microphone directionnel, capteurs gaz (CO, CO₂, CH₄), détecteur radiation (option +2 500 €).

*Intelligence embarquée :* Navigation autonome SLAM, détection victimes par chaleur corporelle et mouvements, analyse stabilité structurelle, reconnaissance vocale (appels au secours).

*Cas d'usage :* Exploration bâtiments effondrés, recherche dans tunnels/mines, inspection sites contaminés (chimique, radiologique), sauvetage en espace confiné.

#pagebreak()

== N-Sonar : Sauvetage amphibie

#grid(
  columns: (1fr, 1fr),
  gutter: 20pt,
  [
    #image("/docs/assets/pictures/onboarding/existing-robots/novatics-n-sonar-studio-1827x1827.png", width: 100%)
  ],
  [
    #image("/docs/assets/pictures/onboarding/existing-robots/novatics-n-sonar-landscape-2499x13003.png", width: 100%)
  ],
)

Le N-Sonar (référence NV-WTR-01) est notre robot amphibie capable d'opérer en surface et en plongée. Avec 45 unités produites, c'est notre produit le plus récent et le plus spécialisé.

#metadata-table(
  ("Prix catalogue 2026", "36 100 €"),
  ("Poids", "28 kg (batterie incluse)"),
  ("Dimensions", "110 × 60 × 40 cm"),
  ("Autonomie", "8 heures (surface), 4 heures (plongée)"),
  ("Vitesse", "12 km/h (surface), 5 km/h (plongée)"),
  ("Profondeur maximale", "50 m"),
  ("Portée contrôle", "2 km (surface), 500 m (câble fibre optique)"),
  ("Protection", "IP68 (étanchéité permanente)"),
  ("Température", "-10°C à +45°C"),
)

*Capteurs embarqués :* Sonar avant/arrière (180° × 2), caméra HD stabilisée (éclairage LED 5 000 lumens), caméra thermique (surface), GPS (surface), capteurs courant/température/salinité.

*Intelligence embarquée :* Détection véhicules/structures submergés, reconnaissance formes humaines (sonar), navigation anti-courant, cartographie fond sous-marin.

*Cas d'usage :* Recherche noyés (inondations, tsunamis), localisation véhicules submergés, inspection barrages/digues, recherche épaves.

#pagebreak()

== Écosystème logiciel

=== Novatics Command Center (NCC)

Le NCC est notre logiciel de contrôle principal, inclus avec chaque robot. Version actuelle : 3.2.1 (octobre 2025).

*Plateformes supportées :* Windows 10/11, Ubuntu 22.04, iPad Pro (iOS 16+)

*Fonctionnalités principales :*
- Contrôle multi-robots (jusqu'à 8 simultanés)
- Cartographie 3D temps réel
- Enregistrement et replay des missions
- Télémétrie complète
- Alertes automatiques (détection victimes)
- Export données (PDF, KML, GeoJSON)

*Architecture technique :* Frontend React + TypeScript, Backend Python (FastAPI) + Node.js, Base de données PostgreSQL + TimescaleDB, Communication MQTT + WebRTC, Cryptage AES-256 + TLS 1.3.

=== Novatics Cloud (Beta)

Notre plateforme SaaS, en lancement Q1 2026, proposera stockage cloud illimité, analyse IA post-mission, dashboard analytics, gestion de flotte multi-sites et API REST pour intégrations tierces.

*Tarification prévue :* 99 €/mois par organisation + 19 €/robot/mois

== Propriété intellectuelle

Novatics détient 12 brevets protégeant nos innovations clés :

#block(
  stroke: 1pt + novatics-gray-line,
  radius: 6pt,
  clip: true,
  width: 100%,
)[
  #set text(size: 8pt)
  #table(
    columns: (15%, 65%, 10%),
    stroke: (x, y) => (
      bottom: 0.5pt + novatics-gray-line,
      left: if x > 0 { 0.5pt + novatics-gray-line } else { 0pt },
    ),
    inset: 8pt,
    fill: (_, row) => if row == 0 { novatics-petrol } else { none },
    text(fill: white, weight: "bold")[Référence],
    text(fill: white, weight: "bold")[Description],
    text(fill: white, weight: "bold")[Année],

    [FR3089234], [Système de détection thermique adaptative en milieu poussiéreux], [2019],
    [FR3091245], [Algorithme SLAM optimisé pour environnements post-catastrophe], [2020],
    [EP3845123], [Mécanisme de déploiement automatique de robots en essaim], [2021],
    [US11234567], [Système de communication mesh résistant aux interférences], [2022],
    [FR3095678], [Batterie modulaire hot-swap pour drones], [2022],
    [US11567890], [IA de reconnaissance de signaux de détresse multimodaux], [2025],
  )
]

#pagebreak()

// =============================================================================
// CHAPITRE 5 : NOS MISSIONS
// =============================================================================

= Nos missions sur le terrain

Novatics a participé à plus de 150 missions dans 32 pays. Voici quelques-unes des interventions les plus marquantes qui illustrent l'impact de notre technologie.

== Missions historiques majeures

=== Séisme Turquie-Syrie (Février 2023)

#image("/docs/assets/pictures/use-cases/nepal-earthquake-2015-aftermath-rubble-5670x3840.jpg", width: 100%)

#callout(title: "Mission fondatrice : notre premier déploiement massif", type: "critical")[
  Le séisme de magnitude 7.8 qui a frappé la Turquie et la Syrie en février 2023 a été un tournant pour Novatics. Pour la première fois, nous avons déployé une flotte complète de robots en situation réelle de catastrophe majeure.
]

*Contexte :* Plus de 50 000 morts, températures de -5°C à +10°C, neige, pluie, infrastructures effondrées.

*Déploiement Novatics :*
- 12 N-Eye + 6 N-Seeker
- 8 opérateurs Novatics + 2 ingénieurs
- Partenaires : Croix-Rouge Française, AFAD (agence turque)
- Durée : 14 jours

*Résultats :*
- 47 victimes localisées
- 23 secourues vivantes
- 150+ heures de vol cumulées
- 32 sites d'effondrements cartographiés en 3D

*Impact médiatique :* CNN, BBC, Le Monde, Reuters - 2,5 millions de vues sur les réseaux sociaux.

=== Hurricane Milton - Floride (Octobre 2024)

#image("/docs/assets/pictures/use-cases/houston-flood-2017-2526x1421.jpg", width: 100%)

*Contexte :* Ouragan catégorie 5 (vents 280 km/h), côte ouest Floride dévastée, 2 500+ bâtiments endommagés.

*Déploiement :* 8 N-Eye, 4 opérateurs (2 Novatics + 2 FEMA formés), 9 jours.

*Résultats :*
- 28 personnes localisées (toits, zones isolées)
- 12 ponts effondrés identifiés
- 120 km² de zones inondées cartographiées

#callout(title: "Percée aux États-Unis", type: "success")[
  Cette mission a été couverte en direct par CNN en prime time et a conduit à l'ouverture de négociations pour un contrat-cadre FEMA de 12 M\$ sur 4 ans.
]

=== Séisme Myanmar (Mai 2025)

#image("/docs/assets/pictures/use-cases/myanmar-hearthquake-2025-4002x2668.png", width: 100%)

*Contexte :* Magnitude 7.2, Mandalay, 300+ bâtiments effondrés, mousson (pluies torrentielles).

*Déploiement :* 10 N-Seeker + 5 N-Eye, 6 opérateurs, 18 jours.

*Résultats :* 31 survivants localisés, 15 sites couverts, 8 opérateurs locaux formés.

#pagebreak()

=== Inondations Lima (Novembre 2025)

#image("/docs/assets/pictures/use-cases/helene-hurricane-puerto-rico-2024-1860x1392.png", width: 100%)

*Contexte :* Pluies record (El Niño), quartiers entiers submergés, véhicules emportés.

*Déploiement :* 4 N-Sonar + 2 N-Eye, bureau Lima + support Toulouse, 6 jours.

*Résultats :* 12 véhicules submergés localisés, 8 personnes secourues.

== Cas d'usage démontrés

Nos robots auraient pu faire la différence dans plusieurs catastrophes passées :

=== Accident nucléaire de Fukushima (2011)

#image("/docs/assets/pictures/use-cases/nuclear-accident-fukushima-2011-1417x956.png", width: 100%)

*Comment Novatics aurait pu aider :*
- N-Seeker avec capteurs radiation → Cartographie contamination sans exposer d'humains
- Inspection visuelle réacteurs inaccessibles
- Collecte échantillons en zones létales

#pagebreak()

=== Attentat du Bataclan, Paris (2015)

#image("/docs/assets/pictures/use-cases/terrorist-attack-bri-assault-bataclan-2015-2048x1363.png", width: 100%)

*Comment Novatics aurait pu aider :*
- N-Seeker en reconnaissance initiale (identification menaces)
- Réduction du risque pour les forces d'intervention
- Caméras thermiques → Localisation otages vs assaillants

== Statistiques globales

#grid(
  columns: (1fr, 1fr),
  gutter: 20pt,
  [
    *Par type de catastrophe :*
    - Séismes : 68 missions
    - Inondations : 42 missions
    - Ouragans/Tempêtes : 21 missions
    - Accidents industriels : 12 missions
    - Incendies : 5 missions
    - Avalanches : 2 missions
  ],
  [
    *Indicateurs de performance :*
    - Taux de réussite mission : 94%
    - Pannes critiques : 7 (2,1% des déploiements)
    - Temps moyen de déploiement : < 24h
    - Victimes localisées : 280+
    - Victimes secourues (survie) : 142
  ],
)

#pagebreak()

// =============================================================================
// CHAPITRE 6 : NOTRE PRÉSENCE MONDIALE
// =============================================================================

= Notre présence mondiale

Novatics opère depuis 5 sites répartis sur 3 continents. Voici la présentation détaillée de chacun.

== Siège social - Toulouse, France

#image("/docs/assets/pictures/onboarding/hero/hero-contact-toulouse-campus-building-2572x1536.png", width: 100%)

*Adresse :* 12 Avenue de l'Aéronautique, Bâtiment Nova, Zone Aerospace, 31400 Toulouse

*Surface :* 800 m² (expansion à 1 200 m² prévue Q1 2026)

*Effectif :* 62 personnes

*Départements sur site :*
- R&D / Engineering (28)
- Direction Générale (9 COMEX)
- Finance & Admin (8)
- IT & Cybersecurity (6)
- Legal (2)
- HR (3)
- Strategy (2)
- Customer Success (4)

*Infrastructure :*
- 3 salles de réunion (10, 20, 40 personnes)
- 1 salle de démonstration clients (60 m²)
- 1 lab de prototypage (150 m²)
- 1 chambre d'essai climatique (-40°C à +70°C)
- 1 piste d'essai indoor N-Seeker (20 m)
- Parking 50 places

*Pourquoi Toulouse ?* Écosystème aérospatial de classe mondiale, accès talents (ISAE-SUPAERO, INSA, Université Paul Sabatier), proximité fournisseurs aéronautiques, soutien Région Occitanie + France 2030, aéroport international.

*Contact :* +33 5 61 42 78 90 | contact\@novatics.io

#pagebreak()

== Usine de production - Chambéry, France

#image("/docs/assets/pictures/onboarding/hero/hero-contact-chambery-factory-building-2572x1536.png", width: 100%)

*Adresse :* 34 Rue des Marais, Zone Industrielle des Landiers, 73000 Chambéry

*Surface :* 1 200 m²

*Effectif :* 18 personnes

*Infrastructure :*
- 2 lignes d'assemblage (N-Eye, N-Seeker, N-Sonar)
- 1 zone de test final (50 m²)
- 1 entrepôt composants (300 m²)
- 1 zone expédition (100 m²)
- Capacité production : 200 robots/an (théorique)

*Production actuelle (2025) :*
- N-Eye : 80 unités/an
- N-Seeker : 50 unités/an
- N-Sonar : 30 unités/an
- Total : 160 robots/an (80% capacité)

*Pourquoi Chambéry ?* Coûts immobiliers inférieurs, bassin emploi qualifié (mécatronique), proximité terrains d'essai (Alpes), subvention Région Auvergne-Rhône-Alpes, logistique optimale (A43, aéroport Grenoble/Lyon).

*Contact :* +33 4 79 85 63 20 | chambery\@novatics.io

== Bureaux internationaux

#grid(
  columns: (1fr, 1fr, 1fr),
  gutter: 15pt,
  [
    *Tokyo, Japon*

    Sumitomo Fudosan Shinjuku Grand Tower, Bureau 1205 \
    Shinjuku-ku, Tokyo

    *Effectif :* 2 personnes

    *Mission :* Développement marché japonais (séismes/tsunamis), support clients Asie-Pacifique

    *Ouverture :* Septembre 2024

    tokyo\@novatics.io
  ],
  [
    *San Francisco, USA*

    535 Mission Street, WeWork Space, 14th Floor \
    San Francisco, CA 94105

    *Effectif :* 2 personnes

    *Mission :* Développement marché nord-américain, partenariats FEMA/agences fédérales

    *Ouverture :* Novembre 2024

    usa\@novatics.io
  ],
  [
    *Lima, Pérou*

    Centro Empresarial Real, Oficina 503 \
    San Isidro, Lima

    *Effectif :* 1 personne

    *Mission :* Développement Amérique Latine, coordination déploiements post-catastrophe

    *Ouverture :* Mars 2025

    latam\@novatics.io
  ],
)

#pagebreak()

// =============================================================================
// CHAPITRE 7 : NOTRE ORGANISATION
// =============================================================================

= Notre organisation

== Structure par département

Notre effectif de 85 personnes est réparti en 10 départements :

#block(
  stroke: 1pt + novatics-gray-line,
  radius: 6pt,
  clip: true,
  width: 100%,
)[
  #set text(size: 9pt)
  #table(
    columns: (30%, 10%, 60%),
    stroke: (x, y) => (
      bottom: 0.5pt + novatics-gray-line,
      left: if x > 0 { 0.5pt + novatics-gray-line } else { 0pt },
    ),
    inset: 10pt,
    fill: (_, row) => if row == 0 { novatics-petrol } else { none },
    text(fill: white, weight: "bold")[Département],
    text(fill: white, weight: "bold")[Effectif],
    text(fill: white, weight: "bold")[Composition],

    [*R&D / Engineering*],
    [28],
    [1 CTO, 12 Software Engineers, 8 Hardware Engineers, 4 Robotics Researchers, 3 Test Engineers],

    [*Production / Supply Chain*],
    [18],
    [1 COO (split), 1 Production Manager, 10 Assembly Technicians, 4 QA, 2 Logistics],

    [*Sales & Marketing*],
    [9],
    [1 CCO, 2 Sales Engineers (SF, Tokyo), 1 LATAM Sales Manager, 3 Account Managers, 2 Marketing],

    [*Finance & Admin*],
    [8],
    [1 CFO, 2 Comptables, 1 Contrôleur de Gestion, 1 Grant Manager, 1 Office Manager, 2 Admin],

    [*IT & Cybersecurity*],
    [6],
    [1 CISO, 2 Security Engineers, 1 DevSecOps Engineer, 1 GRC Analyst, 1 OT Security Specialist],

    [*Legal & Compliance*], [2], [1 Head of Legal, 1 IP Specialist],
    [*HR & Recruitment*], [3], [1 HR Director, 1 Talent Acquisition, 1 HR Assistant],
    [*Strategy & BD*], [2], [1 CSO, 1 Business Analyst],
    [*Customer Success*], [5], [1 Head, 2 Field Support Engineers, 2 Technical Support],
    [*Freelancers*], [12], [4 Software, 3 Industrial Designers, 2 Traducteurs, 2 Regulatory, 1 Fundraising],
  )
]

== Partenariats académiques

Nous maintenons des liens étroits avec le monde académique :

*LAAS-CNRS :* Collaboration robotique autonome, 2 doctorants CIFRE financés par Novatics

*ISAE-SUPAERO :* Formation stagiaires ingénieurs (5-8/an), projets étudiants systèmes embarqués

*MIT CSAIL :* Collaboration via Dr. Lena Rostova, échanges chercheurs, co-publications

#pagebreak()

// =============================================================================
// CHAPITRE 8 : NOS CLIENTS ET PARTENAIRES
// =============================================================================

= Nos clients et partenaires

== Clients gouvernementaux (B2G)

=== Protection Civile Française

*Contrat-cadre national :* 1,2 M€ sur 3 ans (2022-2025)

*Contenu :* 18 N-Eye, 12 N-Seeker, 6 N-Sonar, formation 45 opérateurs, maintenance préventive, hotline 24/7.

*Déploiements :* Inondations Var (2022), Incendie Forêt Gironde (2023), Avalanche Chamonix (2024).

*Renouvellement en négociation :* 2026-2029, 2,5 M€

=== FEMA (États-Unis)

*Partenariat pilote + contrat en négociation*

Après le succès du POC Hurricane Milton (8 N-Eye déployés), nous négocions un contrat-cadre de 12 M\$ sur 4 ans (2026-2030). Décision finale prévue Q1 2026.

=== Tokyo Metro Co. (Japon)

*Contrat équipement métro :* 850 000 € (2024)

14 N-Seeker pour inspection tunnels post-séisme, 6 N-Eye pour surveillance infrastructure, formation 25 techniciens.

== Clients ONG et humanitaires

=== Croix-Rouge Internationale (IFRC)

*Contrat-cadre mondial :* 2,5 M€ sur 2 ans (2025-2027)

25 N-Eye, 15 N-Seeker, 10 N-Sonar déployés sur 5 continents (Genève, Bangkok, Panama, Nairobi, Dubai).

=== Médecins Sans Frontières (MSF)

*Partnership humanitaire :* 180 000 €/an

Accès flotte robots sur demande, formation opérateurs, prix préférentiels, co-développement fonctionnalités.

== Clients B2B

*EDF :* 320 000 € - Inspection centrales nucléaires (6 N-Seeker avec capteurs radiation)

*Total Energies :* 280 000 € - Inspection installations pétrolières

*Veolia :* 150 000 € - Gestion crise inondations (3 N-Sonar, 2 N-Eye)

== Partenariats stratégiques

*Airbus Defence & Space :* Partenariat technologique + investisseur (Airbus Ventures). Co-développement système communication satellite, accès réseau distribution Airbus.

*Thales Group :* Partenariat cybersécurité. Intégration solutions crypto, co-développement protocoles sécurisés, certifications conjointes ANSSI.

*ONU OCHA :* Partenaire Technologique Officiel depuis octobre 2025. Pré-positionnement robots zones à risque, formations opérateurs ONU.

#pagebreak()

// =============================================================================
// CHAPITRE 9 : CULTURE ET VALEURS
// =============================================================================

= Notre culture et nos valeurs

== Nos quatre valeurs fondamentales

=== 1. L'Humanité d'Abord (Humanity First)

La technologie est un moyen, jamais une fin. Chaque décision est prise en pensant d'abord aux vies humaines qu'elle peut sauver.

*En pratique :*
- Nous refusons les contrats militaires offensifs (malgré des marges supérieures)
- Nous appliquons des tarifs préférentiels aux ONG (-30%)
- Nous offrons un support gratuit pour les urgences humanitaires

=== 2. Fiabilité Absolue (Absolute Reliability)

Un bug peut coûter une vie. Nous appliquons des standards de qualité aéronautique à tout notre développement.

*En pratique :*
- Triple validation du code critique (peer review + tests automatisés + QA manuelle)
- Tests environnementaux extrêmes systématiques
- Taux de panne critique maintenu sous 2%

=== 3. Transparence (Transparency)

Avec nos clients, les régulateurs et notre équipe. La confiance se construit sur l'honnêteté.

*En pratique :*
- Rapports post-mission publics (anonymisés)
- Partage des learnings d'échecs sur notre blog technique
- Communication ouverte sur les problèmes produits

=== 4. Innovation Responsable (Responsible Innovation)

Innover pour servir, pas pour impressionner. Chaque nouvelle fonctionnalité doit répondre à un besoin réel.

*En pratique :*
- Roadmap produit co-construite avec les clients finaux (secouristes)
- Refus des features "gadget" même si techniquement impressionnantes
- Focus UX pour les opérateurs terrain (pas les ingénieurs)

#pagebreak()

== Environnement de travail

*Flex Office :* Bureaux Toulouse en open-space + salles focus

*Remote Friendly :* 2 jours de télétravail par semaine autorisés

*Horaires Flexibles :* Core hours 10h-16h, sinon flexible

*Dress Code :* Casual (sauf rendez-vous clients)

== Avantages sociaux

#grid(
  columns: (1fr, 1fr),
  gutter: 20pt,
  [
    #image("/docs/assets/pictures/onboarding/icons/icon-24-7-support-2048x2048.png", width: 40pt)

    *Santé & Bien-être*
    - Mutuelle premium (100% employeur)
    - Tickets restaurant (10 €/jour)
    - Abonnements transports (50% employeur)
  ],
  [
    #image("/docs/assets/pictures/onboarding/icons/icon-training-2048x2048.png", width: 40pt)

    *Congés & Formation*
    - 25 jours congés + 12 RTT
    - Budget formation : 2 000 €/an/personne
    - Congé paternité étendu (1 mois)
  ],
)

== Événements d'équipe

- *Team Building annuel :* En 2024, nous avons passé un week-end dans les Pyrénées
- *Friday Beers :* 1er vendredi de chaque mois
- *Déjeuners d'équipe :* Réguliers
- *Hackathons internes :* 1 par trimestre (24h)

== Programmes internes

*Mentoring :* Chaque nouvel arrivant bénéficie d'un mentor pendant 6 mois. Votre mentor vous sera présenté lors de votre première semaine.

*Friday Tech Talks :* Présentation technique interne de 30 minutes, chaque vendredi. Vous êtes encouragé(e) à proposer un sujet !

*Mission Shadowing :* Vous pouvez accompagner un déploiement terrain après validation de votre manager.

*Innovation Time :* 10% de votre temps peut être consacré à des projets personnels liés à notre mission.

#pagebreak()

== Diversité et inclusion

#grid(
  columns: (1fr, 1fr),
  gutter: 20pt,
  [
    *Répartition par genre (novembre 2025)*
    - Femmes : 34% (29/85)
    - Hommes : 66% (56/85)
    - Objectif 2027 : Parité 50/50

    *COMEX :* 56% femmes (5/9)
  ],
  [
    *Diversité*
    - 12 nationalités représentées
    - 18% d'employés non-français
    - Âge moyen : 36 ans
  ],
)

*Nos programmes :*
- Parrainage écoles d'ingénieures (encourager les filles dans les sciences)
- Partenariat "Femmes Ingénieures"
- Congé paternité étendu (1 mois vs 25 jours légaux)

== RSE (Responsabilité Sociale et Environnementale)

=== Environnement

- *Bilan Carbone 2024 :* 420 tonnes CO₂eq
- *Objectif 2030 :* Neutre carbone

*Actions :*
- Compensation vols missions (reforestation)
- Électricité 100% renouvelable (Toulouse + Chambéry)
- Recyclage batteries (partenariat Veolia)
- Éco-conception produits (réparabilité)

=== Social

- *Mécénat :* 1% du CA reversé aux ONG humanitaires
- *Dons matériel :* Robots fin de vie donnés aux écoles/universités
- *Formations gratuites :* 1 session par an dans les pays en développement

=== Gouvernance

- COMEX paritaire visé pour 2027
- Transparence des salaires en interne (grille publique)
- Stock-options pour tous (BSPCE)

#pagebreak()

// =============================================================================
// CHAPITRE 10 : INFORMATIONS PRATIQUES
// =============================================================================

= Informations pratiques

== Contacts clés

=== Direction générale

#block(
  stroke: 1pt + novatics-gray-line,
  radius: 6pt,
  clip: true,
  width: 100%,
)[
  #set text(size: 9pt)
  #table(
    columns: (25%, 35%, 40%),
    stroke: (x, y) => (
      bottom: 0.5pt + novatics-gray-line,
      left: if x > 0 { 0.5pt + novatics-gray-line } else { 0pt },
    ),
    inset: 10pt,
    fill: (_, row) => if row == 0 { novatics-petrol } else { none },
    text(fill: white, weight: "bold")[Nom],
    text(fill: white, weight: "bold")[Fonction],
    text(fill: white, weight: "bold")[Email],

    [Alexandre DUBOIS], [CEO], [alexandre.dubois\@novatics.io],
    [Dr. Lena ROSTOVA], [CTO], [lena.rostova\@novatics.io],
    [Marco ROSSI], [COO], [marco.rossi\@novatics.io],
    [Claire DELACROIX], [CFO], [claire.delacroix\@novatics.io],
    [Sarah AL-FAYED], [CCO], [sarah.alfayed\@novatics.io],
    [Mei Lin ZHAO], [CISO], [mei-lin.zhao\@novatics.io],
    [Marc TIBERI], [CSO], [marc.tiberi\@novatics.io],
    [Béatrice MOREAU], [Head of Legal], [beatrice.moreau\@novatics.io],
    [David CHEN], [HR Director], [david.chen\@novatics.io],
  )
]

=== Adresses email fonctionnelles

- *Contact général :* contact\@novatics.io
- *Commercial :* sales\@novatics.io
- *Partenariats :* partners\@novatics.io
- *Support technique 24/7 :* support\@novatics.io
- *Urgences missions :* emergency\@novatics.io
- *Recrutement :* careers\@novatics.io
- *Presse :* press\@novatics.io

=== Numéros de téléphone

- *Standard Toulouse :* +33 5 61 42 78 90
- *Urgences 24/7 :* +33 5 61 42 78 99
- *Chambéry :* +33 4 79 85 63 20

== Réseaux sociaux

- *LinkedIn :* \@novatics-sas (18 500 followers)
- *Twitter/X :* \@novatics_rescue (12 300 followers)
- *YouTube :* \@NovaticsRobotics (8 700 subscribers)
- *Instagram :* \@novatics.io (5 400 followers)

== Glossaire technique

Pour faciliter votre intégration, voici quelques termes techniques que vous rencontrerez fréquemment :

#block(
  stroke: 1pt + novatics-gray-line,
  radius: 6pt,
  clip: true,
  width: 100%,
)[
  #set text(size: 9pt)
  #table(
    columns: (20%, 80%),
    stroke: (x, y) => (
      bottom: 0.5pt + novatics-gray-line,
      left: if x > 0 { 0.5pt + novatics-gray-line } else { 0pt },
    ),
    inset: 10pt,
    fill: (_, row) => if row == 0 { novatics-petrol } else { none },
    text(fill: white, weight: "bold")[Terme], text(fill: white, weight: "bold")[Définition],
    [SLAM],
    [Simultaneous Localization And Mapping - Cartographie temps réel permettant au robot de se localiser tout en construisant une carte de son environnement],

    [LIDAR], [Light Detection And Ranging - Capteur laser 3D mesurant les distances par émission de faisceaux lumineux],
    [IMU], [Inertial Measurement Unit - Centrale inertielle mesurant accélérations et rotations],
    [GPS RTK], [Real-Time Kinematic - GPS haute précision (centimétrique) utilisant des corrections en temps réel],
    [Mesh Network], [Réseau décentralisé entre robots permettant la communication même sans infrastructure],
    [AES-256],
    [Advanced Encryption Standard - Standard de cryptage de niveau militaire utilisé pour sécuriser nos communications],

    [Hot-Swap], [Remplacement de batterie sans arrêt du robot, permettant des opérations continues],
    [NCC], [Novatics Command Center - Notre logiciel de contrôle principal],
  )
]

#pagebreak()

// =============================================================================
// CONCLUSION
// =============================================================================

= Conclusion

#v(1em)

#align(center)[
  #image("/docs/assets/pictures/onboarding/hero/hero-about-robotics-lab-toulouse-engineers-2572x1536.png", width: 100%)
]

#v(1em)

Vous faites désormais partie de l'aventure Novatics. Que vous soyez ingénieur, commercial, administratif ou opérateur terrain, votre contribution compte. Chaque jour, notre travail collectif permet de sauver des vies.

#callout(title: "Citation du fondateur", type: "info")[
  _"En 2030, je veux qu'aucun secouriste ne risque sa vie inutilement. Chaque catastrophe majeure sur Terre doit voir arriver nos robots dans les premières 24 heures. Nous ne construisons pas une licorne tech, nous construisons un service public mondial. Si nous réussissons, des milliers de vies seront sauvées. C'est ça, le vrai succès."_

  #align(right)[— Alexandre DUBOIS, CEO & Fondateur]
]

#v(1em)

#align(center)[
  #text(size: 14pt, weight: "bold", fill: novatics-petrol)[
    "La technologie n'a de sens que si elle sert l'humanité."
  ]
]

#v(2em)

#align(center)[
  #text(size: 10pt, fill: novatics-gray)[
    *NOVATICS SAS* \
    Sauver des vies grâce à la robotique \
    Toulouse, France | www.novatics.io
  ]
]
