// =============================================================================
// NOVATICS - Note d'Information Interne : Contrat DGA & Programme N-RECON
// Communication aux salariés - Document complet et transparent
// =============================================================================

#import "../../templates/novatics-template.typ": *

#show: novatics-doc.with(
  title: "Un Nouveau Chapitre pour Novatics",
  subtitle: "Notre partenariat avec la Défense française et le programme N-RECON",
  doc-category: "COMMUNICATION INTERNE",
  version: "1.0",
  date: datetime(year: 2025, month: 11, day: 15),
  author: "Alexandre DUBOIS, CEO",
  tlp: "GREEN",
  reference: "NOV-COM-DGA-001",
  logo-path: "/docs/assets/pictures/logo/novatics-full-logo.png",
)

// -----------------------------------------------------------------------------
// HISTORIQUE DES VERSIONS
// -----------------------------------------------------------------------------

#version-history(
  (version: "1.0", date: "15/11/2025", changes: "Création du document - Annonce officielle", author: "A. Dubois"),
)

#pagebreak()

// -----------------------------------------------------------------------------
// TABLE DE VALIDATION
// -----------------------------------------------------------------------------

#approval-table((
  (role: "Rédacteur", name: "Alexandre DUBOIS", date: "15/11/2025"),
  (role: "Vérificateur", name: "Mei Lin ZHAO", date: "15/11/2025"),
  (role: "Approbateur", name: "COMEX Novatics", date: "15/11/2025"),
))

#v(1em)

// -----------------------------------------------------------------------------
// TABLE DES MATIÈRES
// -----------------------------------------------------------------------------

#custom-outline()

#pagebreak()

// =============================================================================
// MESSAGE DU CEO
// =============================================================================

= Message du CEO

#v(0.5em)

#image("/docs/assets/pictures/onboarding/team-members/ceo-alexandre-dubois-1856x2304.png", width: 25%)

#v(1em)

*Chères collaboratrices, chers collaborateurs,*

Aujourd'hui marque un tournant majeur dans l'histoire de Novatics. Je tenais à vous annoncer personnellement une nouvelle qui va façonner notre avenir pour les années à venir.

*En avril 2025, nous avons signé un contrat stratégique avec la Direction Générale de l'Armement (DGA) pour un montant de 4,8 millions d'euros sur quatre ans.*

Avant toute chose, je veux être parfaitement clair sur un point fondamental : *cette évolution ne remet absolument pas en cause notre mission humanitaire*. Au contraire, elle la renforce et l'étend à de nouveaux domaines.

Je sais que certains d'entre vous peuvent avoir des questions, voire des inquiétudes. C'est pourquoi j'ai souhaité que cette note soit la plus complète et la plus transparente possible. Vous y trouverez tous les détails du contrat, les implications pour notre organisation, et surtout, les raisons profondes de cet engagement.

Notre ADN reste le même : *sauver des vies grâce à la technologie*. Le contrat DGA porte exclusivement sur la protection des intervenants en environnement dangereux --- pompiers, secouristes, personnels de sécurité civile. Nous n'avons pas changé. Nous évoluons.

Je compte sur chacun d'entre vous pour porter cette nouvelle ambition avec la même passion qui nous anime depuis 2018.

#align(right)[
  #text(style: "italic")[Alexandre Dubois] \
  #text(size: 9pt, fill: rgb("#64748B"))[Fondateur & CEO de Novatics]
]

#pagebreak()

// =============================================================================
// CHAPITRE 1 : POURQUOI CE PARTENARIAT ?
// =============================================================================

= Pourquoi ce partenariat avec la Défense ?

== Notre positionnement : une clarté absolue

Avant d'entrer dans les détails, nous devons être parfaitement clairs sur ce que ce contrat *est* et ce qu'il *n'est pas*.

#callout(title: "Ce que le contrat DGA N'EST PAS", type: "critical")[
  -- Un contrat d'armement \
  -- Un développement de systèmes offensifs \
  -- Un robot de combat ou de surveillance offensive \
  -- Un système de ciblage ou de neutralisation \
  -- Une rupture avec notre mission humanitaire
]

#v(1em)

#callout(title: "Ce que le contrat DGA EST", type: "success")[
  -- Un outil de *protection des intervenants* (pompiers, secouristes, militaires NRBC) \
  -- Un système d'*évaluation de risques environnementaux* \
  -- Un robot de *reconnaissance pour la sécurité civile* \
  -- Une extension logique de notre mission : *protéger ceux qui protègent*
]

#v(1em)

Cette position a été affirmée dès nos premiers échanges avec la DGA. Voici ce que j'ai déclaré lors du COMEX du 15 septembre 2024 :

#callout(title: "Citation - Alexandre Dubois, COMEX du 15/09/2024", type: "info")[
  "Novatics a été claire dès le premier contact : nous ne développons pas d'armement. Notre mission est de protéger les vies, pas de les menacer. La DGA a parfaitement compris ce positionnement et le contrat porte exclusivement sur des applications de reconnaissance et de protection des intervenants."
]

== La genèse : comment tout a commencé

L'histoire de ce partenariat remonte à notre intervention lors du séisme Turquie-Syrie en février 2023. Cette mission, largement médiatisée (CNN, BBC, Le Monde), a attiré l'attention de la Direction Générale de l'Armement.

#metadata-table(
  ("Premier contact", "Février 2024 - La DGA-TT nous contacte"),
  ("Démonstration", "Juin 2024 - Présentation au CESCOF (Bourges)"),
  ("Expression de besoin", "Septembre 2024 - EBO formalisée"),
  ("Négociations", "Octobre-Décembre 2024 - 3 rounds"),
  ("Signature", "Avril 2025 - Contrat-cadre signé"),
  ("Lancement", "Mai 2025 - Kick-off programme N-RECON"),
)

#v(1em)

#v(1em)

*Lors de la démonstration de juin 2024 à Bourges, étaient présents :*

- Colonel Isabelle Marchand, DGA Techniques Terrestres
- Commandant Pierre Lefebvre, Brigade des Sapeurs-Pompiers de Paris (BSPP)
- Représentants de la Sécurité Civile (DGSCGC)
- Représentants du SGDSN

#v(1em)

*Résultats de la démonstration :*

- N-Eye : reconnaissance aérienne en environnement confiné (hangar simulant un bâtiment effondré)
- N-Seeker : navigation autonome en zone contaminée simulée
- Temps de déploiement : *8 minutes* (objectif DGA : moins de 15 minutes)

== Le besoin identifié par la DGA

La DGA a exprimé un besoin opérationnel précis : disposer d'un système robotisé capable d'évaluer des environnements dangereux *avant* d'y engager des personnels humains.

*Trois cas d'usage prioritaires :*

+ *Évaluation post-incident sur sites sensibles* --- centrales nucléaires, sites Seveso
+ *Reconnaissance pré-intervention pour les unités CBRN des Armées* --- zones contaminées chimiques, radiologiques
+ *Support aux équipes de déminage* --- évaluation à distance avant intervention humaine

Dans tous ces cas, l'objectif est le même : *protéger les vies des intervenants* en leur fournissant une connaissance précise de l'environnement avant qu'ils n'y pénètrent.

#pagebreak()

// =============================================================================
// CHAPITRE 2 : LES CHIFFRES DU CONTRAT
// =============================================================================

= Les chiffres du contrat

Nous croyons en la transparence totale. Voici l'ensemble des données financières du contrat DGA.

== Vue d'ensemble financière

#grid(
  columns: (1fr, 1fr, 1fr),
  gutter: 16pt,
  kpi-card("4,8 M€", "MONTANT TOTAL", accent: novatics-petrol),
  kpi-card("4 ans", "DURÉE", accent: novatics-cyan),
  kpi-card("38%", "DU CA 2025", accent: novatics-orange),
)

#v(1em)

#metadata-table(
  ("Numéro de contrat", "DGA-TT-2025-NRBC-0847"),
  ("Intitulé", "Programme N-RECON - Système Robotisé de Reconnaissance NRBC"),
  ("Montant total", "4 800 000 € sur 4 ans (2025-2029)"),
  ("Tranche ferme (TF)", "1 800 000 € (Phase 1 : R&D + Prototypes)"),
  ("Tranche conditionnelle 1", "1 500 000 € (Production série)"),
  ("Tranche conditionnelle 2", "1 500 000 € (MCO + Évolutions)"),
  ("Type de marché", "Marché négocié avec mise en concurrence restreinte"),
  ("Autorité contractante", "DGA Techniques Terrestres (Bourges)"),
  ("Responsable programme DGA", "Colonel Isabelle Marchand"),
)

== Décomposition par phase

=== Phase 1 : R&D et Prototypes (2025-2026) --- 1,8 M€

Cette phase est *ferme*, c'est-à-dire que nous sommes engagés et financés.

#block(
  stroke: 1pt + novatics-gray-line,
  radius: 6pt,
  clip: true,
  width: 100%,
)[
  #set text(size: 9pt)
  #table(
    columns: (45%, 25%, 15%, 15%),
    stroke: (x, y) => (
      bottom: 0.5pt + novatics-gray-line,
      left: if x > 0 { 0.5pt + novatics-gray-line } else { 0pt },
    ),
    inset: 10pt,
    fill: (_, row) => if row == 0 { novatics-petrol } else { none },
    align: (left, center, center, right),
    text(fill: white, weight: "bold")[Livrable],
    text(fill: white, weight: "bold")[Échéance],
    text(fill: white, weight: "bold")[Statut],
    text(fill: white, weight: "bold")[Montant],

    [L1.1 - Spécifications techniques détaillées], [Août 2025], status-badge("En cours"), [150 000 €],
    [L1.2 - Prototypes N-Recon (x3)], [Mai 2026], status-badge("Planifié"), [800 000 €],
    [L1.3 - Logiciel NCC-Défense (version DR)], [Mai 2026], status-badge("Planifié"), [400 000 €],
    [L1.4 - Documentation technique & formation], [Juillet 2026], status-badge("Planifié"), [200 000 €],
    [L1.5 - Qualification DGA (tests Bourges)], [Sept 2026], status-badge("Planifié"), [250 000 €],
  )
]

=== Phase 2 : Production Série (TC1, 2027) --- 1,5 M€

Cette tranche est *conditionnelle* : elle sera déclenchée si la Phase 1 est validée par la DGA.

#block(
  stroke: 1pt + novatics-gray-line,
  radius: 6pt,
  clip: true,
  width: 100%,
)[
  #set text(size: 9pt)
  #table(
    columns: (40%, 20%, 20%, 20%),
    stroke: (x, y) => (
      bottom: 0.5pt + novatics-gray-line,
      left: if x > 0 { 0.5pt + novatics-gray-line } else { 0pt },
    ),
    inset: 10pt,
    fill: (_, row) => if row == 0 { novatics-petrol } else { none },
    align: (left, center, center, right),
    text(fill: white, weight: "bold")[Livrable],
    text(fill: white, weight: "bold")[Quantité],
    text(fill: white, weight: "bold")[Prix unitaire],
    text(fill: white, weight: "bold")[Total],

    [N-Recon série], [12 unités], [95 000 €], [1 140 000 €],
    [Stations de contrôle NCC-D], [4 unités], [45 000 €], [180 000 €],
    [Formation opérateurs], [3 sessions (8 pers.)], [25 000 €], [75 000 €],
    [Kits pièces de rechange (2 ans)], [4 kits], [30 000 €], [120 000 €],
  )
]

=== Phase 3 : MCO et Évolutions (TC2, 2028-2029) --- 1,5 M€

La dernière tranche couvre la maintenance et les évolutions :

- Maintenance corrective et évolutive
- Mises à jour logicielles sécurisées
- Évolutions capacitaires (capteurs, autonomie)
- Support technique 24/7 (astreinte)

== Impact sur notre chiffre d'affaires

#callout(title: "Perspective financière", type: "info")[
  Le contrat DGA représente *4,8 M€* sur 4 ans, soit une moyenne de *1,2 M€ par an*. \
  \
  Avec un CA 2025 projeté à *12,5 M€*, ce contrat représente environ *10% de notre chiffre d'affaires annuel moyen*. \
  \
  C'est significatif, mais cela reste *complémentaire* à nos activités existantes, pas un remplacement.
]

#pagebreak()

// =============================================================================
// CHAPITRE 3 : LE PRODUIT N-RECON
// =============================================================================

= Le produit N-Recon : un robot qui protège

== Philosophie de conception

Le N-Recon est un *robot terrestre spécialisé pour la reconnaissance en environnement NRBC* (Nucléaire, Radiologique, Biologique, Chimique). Il est dérivé de notre N-Seeker, mais avec des capacités renforcées pour les environnements contaminés.

#callout(title: "Philosophie N-Recon", type: "success")[
  "Permettre aux intervenants NRBC d'évaluer une zone dangereuse AVANT d'y engager des personnels, sauvant ainsi des vies."
]

== Spécifications techniques

=== Châssis et Mobilité

#metadata-table(
  ("Base", "N-Seeker Gen2 modifié"),
  ("Poids", "21 kg (vs 18 kg N-Seeker standard)"),
  ("Dimensions", "90 cm (L) × 65 cm (l) × 55 cm (h)"),
  ("Autonomie", "8 heures (batterie renforcée)"),
  ("Vitesse maximale", "10 km/h"),
  ("Franchissement", "40 cm (obstacles)"),
  ("Étanchéité", "IP68 (submersion 1m pendant 30 min)"),
  ("Décontamination", "Compatible lavage haute pression"),
)

=== Capteurs NRBC

Le N-Recon embarque une suite complète de capteurs pour détecter les menaces environnementales :

#block(
  stroke: 1pt + novatics-gray-line,
  radius: 6pt,
  clip: true,
  width: 100%,
)[
  #set text(size: 9pt)
  #table(
    columns: (18%, 32%, 50%),
    stroke: (x, y) => (
      bottom: 0.5pt + novatics-gray-line,
      left: if x > 0 { 0.5pt + novatics-gray-line } else { 0pt },
    ),
    inset: 10pt,
    fill: (_, row) => if row == 0 { novatics-petrol } else { none },
    align: (center, left, left),
    text(fill: white, weight: "bold")[Type],
    text(fill: white, weight: "bold")[Modèle],
    text(fill: white, weight: "bold")[Fonction],

    [Radiologique], [Thermo Fisher RadEye PRD-ER], [Détection gamma (Cs-137, Co-60, etc.)],
    [Chimique], [Dräger X-am 8000], [Multi-gaz (CO, H₂S, O₂, explosimètres)],
    [Biologique], [BioFlash (Smiths Detection)], [Détection agents biologiques aérosols],
    [Thermique], [FLIR A700], [Imagerie thermique haute résolution],
    [Optique], [Caméra 4K + zoom ×30], [Inspection visuelle détaillée],
  )
]

=== Communication sécurisée

#metadata-table(
  ("Liaison radio", "Thales TRC 6300 (qualifié DR)"),
  ("Chiffrement", "AES-256 + couche Thales"),
  ("Portée", "2 km (urbain) / 5 km (dégagé)"),
  ("Redondance", "Double liaison (radio + 4G/5G chiffré)"),
  ("Anti-brouillage", "Sauts de fréquence FHSS"),
)

== Le logiciel NCC-Défense

Une version spécifique du Novatics Command Center sera développée pour répondre aux exigences de sécurité :

#block(
  stroke: 1pt + novatics-gray-line,
  radius: 6pt,
  clip: true,
  width: 100%,
)[
  #set text(size: 9pt)
  #table(
    columns: (25%, 37%, 38%),
    stroke: (x, y) => (
      bottom: 0.5pt + novatics-gray-line,
      left: if x > 0 { 0.5pt + novatics-gray-line } else { 0pt },
    ),
    inset: 10pt,
    fill: (_, row) => if row == 0 { novatics-petrol } else { none },
    align: (left, left, left),
    text(fill: white, weight: "bold")[Aspect],
    text(fill: white, weight: "bold")[NCC Standard],
    text(fill: white, weight: "bold")[NCC-Défense],

    [Hébergement], [Cloud AWS (Novatics Cloud)], [On-premise client (air-gapped possible)],
    [Authentification], [Login + MFA standard], [Carte à puce + certificat ANSSI],
    [Chiffrement données], [AES-256], [AES-256 + module HSM],
    [Journalisation], [Standard], [Conformité II 901 (horodatage, intégrité)],
    [Export données], [Standard], [Contrôlé, watermarking, audit trail],
    [Mises à jour], [OTA automatique], [Qualification avant déploiement],
  )
]

== Les utilisateurs finaux

Les systèmes N-Recon seront mis à disposition des unités suivantes :

#block(
  stroke: 1pt + novatics-gray-line,
  radius: 6pt,
  clip: true,
  width: 100%,
)[
  #set text(size: 9pt)
  #table(
    columns: (40%, 45%, 15%),
    stroke: (x, y) => (
      bottom: 0.5pt + novatics-gray-line,
      left: if x > 0 { 0.5pt + novatics-gray-line } else { 0pt },
    ),
    inset: 10pt,
    fill: (_, row) => if row == 0 { novatics-petrol } else { none },
    align: (left, left, center),
    text(fill: white, weight: "bold")[Unité],
    text(fill: white, weight: "bold")[Affectation],
    text(fill: white, weight: "bold")[Robots],

    [2e Régiment de Dragons (2e RD)], [CBRN Armée de Terre, Fontevraud], [4],
    [Brigade des Sapeurs-Pompiers de Paris], [GIC (Groupe d'Intervention Chimique)], [3],
    [Bataillon de Marins-Pompiers de Marseille], [Unité NRBC], [2],
    [SDIS 13 (Bouches-du-Rhône)], [Cellule Mobile d'Intervention Chimique], [2],
    [CEA], [Division Sécurité Nucléaire], [1],
  )
]

#callout(title: "Nos robots vont protéger...", type: "success")[
  Des pompiers parisiens. Des marins-pompiers marseillais. Des militaires spécialisés NRBC. Des agents de sécurité nucléaire. \
  \
  *Exactement le même type de personnes que nous aidons déjà lors des catastrophes naturelles.*
]

#pagebreak()

// =============================================================================
// CHAPITRE 4 : CE QUI VA CHANGER
// =============================================================================

= Ce qui va changer chez Novatics

== Nouvelle infrastructure : le "Lab DR"

Pour développer le N-Recon et le NCC-Défense, nous devons créer un environnement de développement isolé et sécurisé à Toulouse.

#metadata-table(
  ("Surface", "120 m² (extension du HQ Toulouse)"),
  ("Isolation", "Zone cloisonnée physiquement"),
  ("Accès", "Badge + biométrie + habilitation DR"),
  ("Réseau", "Air-gapped, passerelle contrôlée vers SI standard"),
  ("Effectif dédié", "6 personnes habilitées DR"),
  ("Budget aménagement", "180 000 €"),
)

#callout(title: "Qu'est-ce que \"DR\" ?", type: "info")[
  *DR = Diffusion Restreinte*. C'est un niveau de classification des informations de défense. Les documents et données classifiés DR nécessitent des mesures de protection spécifiques : locaux sécurisés, personnel habilité, systèmes informatiques homologués.
]

== Recrutements prévus

Le programme N-RECON nécessite le recrutement de *4 nouveaux collaborateurs* au Q3-Q4 2025 :

#block(
  stroke: 1pt + novatics-gray-line,
  radius: 6pt,
  clip: true,
  width: 100%,
)[
  #set text(size: 9pt)
  #table(
    columns: (35%, 20%, 45%),
    stroke: (x, y) => (
      bottom: 0.5pt + novatics-gray-line,
      left: if x > 0 { 0.5pt + novatics-gray-line } else { 0pt },
    ),
    inset: 10pt,
    fill: (_, row) => if row == 0 { novatics-petrol } else { none },
    align: (left, center, left),
    text(fill: white, weight: "bold")[Poste],
    text(fill: white, weight: "bold")[Temps alloué],
    text(fill: white, weight: "bold")[Profil recherché],

    [Ingénieur Capteurs NRBC], [100%], [Spécialiste instrumentation NRBC],
    [Ingénieur Électronique], [100%], [Intégration systèmes embarqués],
    [Ingénieur Test & Qualification], [100%], [Expérience qualification défense],
    [Chef de Projet Adjoint], [100%], [Gestion projets sensibles],
  )
]

#v(1em)

*Si vous connaissez des profils correspondants, n'hésitez pas à les recommander !*

== L'équipe projet N-RECON

#block(
  stroke: 1pt + novatics-gray-line,
  radius: 6pt,
  clip: true,
  width: 100%,
)[
  #set text(size: 9pt)
  #table(
    columns: (30%, 35%, 20%, 15%),
    stroke: (x, y) => (
      bottom: 0.5pt + novatics-gray-line,
      left: if x > 0 { 0.5pt + novatics-gray-line } else { 0pt },
    ),
    inset: 10pt,
    fill: (_, row) => if row == 0 { novatics-petrol } else { none },
    align: (left, left, center, center),
    text(fill: white, weight: "bold")[Rôle],
    text(fill: white, weight: "bold")[Nom],
    text(fill: white, weight: "bold")[Temps alloué],
    text(fill: white, weight: "bold")[Habilitation],

    [Chef de Projet], [Thomas Mercier], [80%], [En cours],
    [Architecte Hardware], [Dr. Isabelle Fournier], [100%], [En cours],
    [Lead Software NCC-D], [Julie Arnaud], [100%], [En cours],
    [Cybersecurity Engineer], [(rattaché CISO)], [50%], [En cours],
    [Responsable Qualité], [(détaché Chambéry)], [50%], [En cours],
    [Développeurs Software], [3 ETP], [100%], [À initier],
  )
]

== Les habilitations de sécurité

Travailler sur des projets classifiés Défense nécessite une *habilitation de sécurité*. C'est une procédure administrative qui vérifie que la personne peut accéder à des informations sensibles.

#metadata-table(
  ("Niveau requis équipe projet", "Confidentiel Défense (CD)"),
  ("Niveau requis direction", "Secret (S) pour le CEO"),
  ("Délai moyen d'obtention", "3 à 6 mois"),
  ("Nombre de personnes à habiliter", "15 personnes"),
  ("Dossiers déjà déposés", "5 (CEO, CTO, CISO, Chef Projet, Lead Tech)"),
)

#callout(title: "Ce que cela implique pour vous", type: "info")[
  Si vous êtes sollicité pour travailler sur le programme N-RECON, vous devrez : \
  \
  -- Remplir un dossier d'habilitation (formulaire administratif) \
  -- Faire l'objet d'une enquête de sécurité (vérification des antécédents) \
  -- Attendre 3 à 6 mois pour la réponse \
  -- Respecter des règles strictes de confidentialité \
  \
  *Cela ne concerne que les personnes travaillant directement sur le projet N-RECON.*
]

#pagebreak()

// =============================================================================
// CHAPITRE 5 : CALENDRIER
// =============================================================================

= Calendrier du programme

== Jalons 2025-2026

#v(1em)

*2025 --- Phase de lancement et préparation*

#roadmap-item(
  "Mai",
  "2025",
  "Kick-off officiel",
  (
    "Signature effective du contrat",
    "Constitution de l'équipe projet",
    "Lancement des recrutements",
  ),
  accent: novatics-cyan,
)

#roadmap-item(
  "Juin-Août",
  "2025",
  "Structuration",
  (
    "Dépôt des dossiers d'habilitation",
    "Sélection prestataire aménagement Lab DR",
    "Définition architecture technique",
    "Livraison L1.1 : Spécifications techniques (Août)",
  ),
  accent: novatics-petrol,
)

#roadmap-item(
  "Sept-Nov",
  "2025",
  "Aménagement Lab DR",
  (
    "Travaux d'aménagement (180k€)",
    "Acquisition équipements sécurisés",
    "Formation équipe DR",
    "Audit de sécurité Safyra.io",
  ),
  accent: novatics-orange,
)

#roadmap-item(
  "Décembre",
  "2025",
  "Finalisation Phase 1 préparatoire",
  (
    "Tests et recette Lab DR",
    "Ateliers EBIOS RM avec DGA",
    "Revue mi-parcours Phase 1",
  ),
  accent: novatics-gold,
)

*2026 --- Phase de développement et qualification*

#roadmap-item("Fév", "2026", "Revue de conception critique (CDR)", (
  "Validation architecture finale",
  "Validation choix capteurs",
))

#roadmap-item("Mars-Avril", "2026", "Intégration", (
  "Intégration prototypes #1 et #2",
  "Tests internes (Chambéry + terrain Alpes)",
))

#roadmap-item("Mai", "2026", "Livrables majeurs", (
  "L1.2 : Livraison 3 prototypes",
  "L1.3 : Livraison NCC-D v1.0",
))

#roadmap-item("Juin-Juillet", "2026", "Tests utilisateurs", (
  "Tests avec BSPP et 2e RD",
  "L1.4 : Documentation complète",
))

#roadmap-item(
  "Sept",
  "2026",
  "Qualification DGA",
  (
    "L1.5 : Tests qualification à Bourges",
    "Décision levée TC1 (Phase 2)",
  ),
  accent: color-low,
)

#pagebreak()

// =============================================================================
// CHAPITRE 6 : INVESTISSEMENTS EN SÉCURITÉ
// =============================================================================

= Investissements en sécurité

== Budget conformité DR

Pour répondre aux exigences de sécurité du contrat DGA, nous devons investir significativement dans notre infrastructure et nos processus.

#grid(
  columns: (1fr, 1fr, 1fr),
  gutter: 16pt,
  kpi-card("410 k€", "BUDGET CONFORMITÉ DR", accent: novatics-petrol),
  kpi-card("180 k€", "AMÉNAGEMENT LAB", accent: novatics-cyan),
  kpi-card("85 k€", "SOC ANNUEL", accent: novatics-orange),
)

#v(1em)

=== Détail des investissements par trimestre

*Q2 2025 (Juin-Août)*

#block(
  stroke: 1pt + novatics-gray-line,
  radius: 6pt,
  clip: true,
  width: 100%,
)[
  #set text(size: 9pt)
  #table(
    columns: (55%, 25%, 20%),
    stroke: (x, y) => (
      bottom: 0.5pt + novatics-gray-line,
      left: if x > 0 { 0.5pt + novatics-gray-line } else { 0pt },
    ),
    inset: 10pt,
    fill: (_, row) => if row == 0 { novatics-petrol } else { none },
    align: (left, left, right),
    text(fill: white, weight: "bold")[Action],
    text(fill: white, weight: "bold")[Responsable],
    text(fill: white, weight: "bold")[Budget],

    [Recrutement équipe projet (4 postes)], [HR], [50 000 €],
    [Dossiers habilitations (15 personnes)], [CISO], [5 000 €],
    [Études aménagement Lab DR], [Facilities], [10 000 €],
    [*Total Q2*], [], [*65 000 €*],
  )
]

#v(1.5em)

*Q3 2025 (Sept-Nov)*

#block(
  stroke: 1pt + novatics-gray-line,
  radius: 6pt,
  clip: true,
  width: 100%,
)[
  #set text(size: 9pt)
  #table(
    columns: (55%, 25%, 20%),
    stroke: (x, y) => (
      bottom: 0.5pt + novatics-gray-line,
      left: if x > 0 { 0.5pt + novatics-gray-line } else { 0pt },
    ),
    inset: 10pt,
    fill: (_, row) => if row == 0 { novatics-petrol } else { none },
    align: (left, left, right),
    text(fill: white, weight: "bold")[Action],
    text(fill: white, weight: "bold")[Responsable],
    text(fill: white, weight: "bold")[Budget],

    [Travaux aménagement Lab DR], [Facilities], [180 000 €],
    [Équipements réseau DR (Stormshield)], [IT], [45 000 €],
    [Postes sécurisés (6 unités)], [IT], [30 000 €],
    [Solution crypto qualifiée], [IT], [25 000 €],
    [Formation équipe DR (Thales)], [CISO], [15 000 €],
    [Audit Safyra.io (pré-homologation)], [CISO], [35 000 €],
    [*Total Q3*], [], [*330 000 €*],
  )
]

#pagebreak()

*Q4 2025 (Décembre)*

#block(
  stroke: 1pt + novatics-gray-line,
  radius: 6pt,
  clip: true,
  width: 100%,
)[
  #set text(size: 9pt)
  #table(
    columns: (55%, 25%, 20%),
    stroke: (x, y) => (
      bottom: 0.5pt + novatics-gray-line,
      left: if x > 0 { 0.5pt + novatics-gray-line } else { 0pt },
    ),
    inset: 10pt,
    fill: (_, row) => if row == 0 { novatics-petrol } else { none },
    align: (left, left, right),
    text(fill: white, weight: "bold")[Action],
    text(fill: white, weight: "bold")[Responsable],
    text(fill: white, weight: "bold")[Budget],

    [Ateliers EBIOS RM avec DGA], [CISO], [10 000 €],
    [Documentation homologation], [Interne], [--],
    [Tests et recette Lab DR], [Interne], [--],
    [*Total Q4*], [], [*10 000 €*],
  )
]

== Externalisation du SOC

Notre équipe cybersécurité (6 personnes) ne peut pas assurer seule une surveillance 24/7. Nous avons donc décidé d'externaliser vers un SOC (Security Operations Center) qualifié.

*Prestataire retenu :* Safyra.io (qualifié PASSI) --- 85 000 € / an

Cette décision a été prise après analyse de plusieurs options :

#block(
  stroke: 1pt + novatics-gray-line,
  radius: 6pt,
  clip: true,
  width: 100%,
)[
  #set text(size: 9pt)
  #table(
    columns: (25%, 20%, 18%, 37%),
    stroke: (x, y) => (
      bottom: 0.5pt + novatics-gray-line,
      left: if x > 0 { 0.5pt + novatics-gray-line } else { 0pt },
    ),
    inset: 10pt,
    fill: (_, row) => if row == 0 { novatics-petrol } else { none },
    align: (left, center, right, left),
    text(fill: white, weight: "bold")[Prestataire],
    text(fill: white, weight: "bold")[Qualification],
    text(fill: white, weight: "bold")[Coût/an],
    text(fill: white, weight: "bold")[Décision],

    [Orange Cyberdefense], [PASSI, SecNumCloud], [120 000 €], [Trop coûteux pour démarrage],
    [Thales], [PASSI], [150 000 €], [Coût premium],
    [*Safyra.io*], [PASSI], [*85 000 €*], [*Retenu* -- Agilité, bon rapport Q/P],
    [Advens], [PASSI], [95 000 €], [Alternative possible],
  )
]

#pagebreak()

// =============================================================================
// CHAPITRE 7 : LES RISQUES IDENTIFIÉS
// =============================================================================

= Les risques identifiés

Nous voulons être transparents sur les défis et risques associés à ce programme.

== Matrice des risques

#block(
  stroke: 1pt + novatics-gray-line,
  radius: 6pt,
  clip: true,
  width: 100%,
)[
  #set text(size: 8pt)
  #table(
    columns: (6%, 30%, 12%, 12%, 40%),
    stroke: (x, y) => (
      bottom: 0.5pt + novatics-gray-line,
      left: if x > 0 { 0.5pt + novatics-gray-line } else { 0pt },
    ),
    inset: 8pt,
    fill: (_, row) => if row == 0 { novatics-petrol } else { none },
    align: (center, left, center, center, left),
    text(fill: white, weight: "bold")[ID],
    text(fill: white, weight: "bold")[Risque],
    text(fill: white, weight: "bold")[Probabilité],
    text(fill: white, weight: "bold")[Criticité],
    text(fill: white, weight: "bold")[Mesure de mitigation],

    [R1], [Retard habilitations personnel], [Élevée], risk-level("Critique"), [Démarrage anticipé, profils de backup],
    [R2], [Non-obtention homologation DR], [Moyenne], risk-level("Critique"), [Accompagnement ANSSI, rigueur dossier],
    [R3], [Dépassement budget aménagement Lab], [Moyenne], risk-level("Élevé"), [Provision 15%, suivi mensuel],
    [R4],
    [Fuite d'information phase transitoire],
    [Faible],
    risk-level("Critique"),
    [Mesures compensatoires, sensibilisation],

    [R5], [Difficultés recrutement profils DR], [Moyenne], risk-level("Élevé"), [Partenariat écoles, primes],
    [R6], [Incompatibilité capteurs NRBC/robot], [Faible], risk-level("Élevé"), [POC anticipé, plan B fournisseurs],
    [R7], [Dépendance Thales (crypto)], [Moyenne], risk-level("Modéré"), [Contrat-cadre, alternatives identifiées],
    [R8], [Évolution réglementaire DR], [Faible], risk-level("Modéré"), [Veille réglementaire active],
  )
]

== Focus sur les risques critiques

=== Risque R1 : Retard des habilitations

*Situation :* Le délai moyen d'obtention d'une habilitation Confidentiel Défense est de 3-6 mois. Le projet nécessite 15 personnes habilitées d'ici septembre 2025.

*Notre plan :*
+ Dépôt immédiat des dossiers pour les 5 personnes clés (déjà fait)
+ Dépôt pour l'équipe complète en juin 2025
+ Identification de 3 profils "backup" déjà habilités (anciens Thales/Airbus)
+ Clause contractuelle DGA : tolérance de 2 mois sur le premier livrable

=== Risque R4 : Fuite d'information en phase transitoire

*Situation :* Entre mai et décembre 2025, des informations sensibles seront manipulées sur le SI standard non encore homologué.

*Sources de risque identifiées :*
- Concurrents (DJI, Boston Dynamics) --- espionnage industriel
- États étrangers --- renseignement technologique
- Insider malveillant --- gain financier
- Attaquant opportuniste --- ransomware

*Mesures compensatoires déployées :*
- Segmentation réseau VLAN projet (isolation logique)
- EDR déployé sur tous les postes projet (CrowdStrike)
- DLP (Data Loss Prevention) sur les flux sortants
- Revue hebdomadaire des logs par Cybersecurity Analyst
- Sensibilisation spécifique équipe (social engineering, phishing ciblé)

#callout(title: "Appel à la vigilance", type: "warning")[
  Si vous êtes impliqué dans le projet N-RECON, soyez particulièrement vigilants : \
  \
  -- Ne discutez jamais du projet dans des lieux publics \
  -- Méfiez-vous des sollicitations inhabituelles (mails, appels, LinkedIn) \
  -- Signalez immédiatement tout comportement suspect à security\@novatics.io
]

#pagebreak()

// =============================================================================
// CHAPITRE 8 : IMPACT SUR NOS ACTIVITÉS EXISTANTES
// =============================================================================

= Impact sur nos activités existantes

== Ce qui ne change PAS

#callout(title: "Notre mission reste la même", type: "success")[
  *Sauver des vies grâce à la robotique.* \
  \
  Le contrat DGA ne remplace pas nos activités humanitaires. Il les *complète* en étendant notre impact à la protection des premiers intervenants.
]

*Nos engagements maintenus :*

- *Croix-Rouge Internationale* : contrat-cadre de 2,5 M€ toujours actif
- *MSF* : partenariat de 180 k€/an maintenu
- *Protection Civile française* : contrat de 1,2 M€ en cours
- *Réduction ONG* : maintien de la politique de -30% pour les ONG humanitaires
- *Refus armement offensif* : aucun changement dans notre éthique

== Ce qui évolue

*Nouvelle répartition du CA (projection 2026) :*

#grid(
  columns: (1fr, 1fr, 1fr, 1fr),
  gutter: 12pt,
  kpi-card("45%", "B2G\n(GOUVERNEMENTS)", accent: novatics-petrol),
  kpi-card("30%", "ONG\n(HUMANITAIRE)", accent: novatics-cyan),
  kpi-card("15%", "B2B\n(ENTREPRISES)", accent: novatics-orange),
  kpi-card("10%", "DÉFENSE\n(DGA)", accent: novatics-gold),
)

#v(1em)

*Évolution de l'effectif :*

#metadata-table(
  ("Effectif actuel (nov 2025)", "85 collaborateurs"),
  ("Recrutements prévus 2025-2026", "+20 personnes (dont 4 pour N-RECON)"),
  ("Effectif cible fin 2026", "105-110 collaborateurs"),
  ("Personnes dédiées N-RECON", "12 personnes (dont 4 recrutements)"),
)

== Synergies entre activités

Le développement du N-Recon bénéficiera à l'ensemble de nos produits :

#block(
  stroke: 1pt + novatics-gray-line,
  radius: 6pt,
  clip: true,
  width: 100%,
)[
  #set text(size: 9pt)
  #table(
    columns: (35%, 65%),
    stroke: (x, y) => (
      bottom: 0.5pt + novatics-gray-line,
      left: if x > 0 { 0.5pt + novatics-gray-line } else { 0pt },
    ),
    inset: 10pt,
    fill: (_, row) => if row == 0 { novatics-petrol } else { none },
    align: (left, left),
    text(fill: white, weight: "bold")[Innovation N-RECON],
    text(fill: white, weight: "bold")[Application aux produits civils],

    [Batterie renforcée (8h)], [Amélioration autonomie N-Seeker Gen2],
    [Étanchéité IP68], [Nouveau standard pour toute la gamme],
    [Capteurs thermiques FLIR A700], [Option premium pour N-Eye et N-Seeker],
    [Communication sécurisée Thales], [Partenariat technologique élargi],
    [NCC-Défense (on-premise)], [Option NCC "Enterprise" pour grands comptes],
    [Processus qualification DGA], [Amélioration globale de notre qualité],
  )
]

#pagebreak()

// =============================================================================
// CHAPITRE 9 : FAQ
// =============================================================================

= Questions fréquentes (FAQ)

== Questions éthiques

*"Novatics devient-elle une entreprise d'armement ?"*

Non, absolument pas. Le contrat DGA porte exclusivement sur des systèmes de *reconnaissance et de protection*. Le N-Recon ne porte aucun armement, ne peut être armé, et sa conception ne le permet pas. C'est un robot d'évaluation de risques, pas un robot de combat.

*"Pourrait-on être amenés à développer des armes à l'avenir ?"*

Non. Notre charte éthique, inscrite dans nos statuts, interdit le développement de systèmes offensifs. Le COMEX a réaffirmé cette position lors de la signature du contrat DGA. Tout contrat proposé qui irait dans ce sens serait refusé.

*"Les militaires vont-ils utiliser nos robots pour des opérations offensives ?"*

Le N-Recon est conçu pour la reconnaissance et l'évaluation environnementale. Il ne peut pas être détourné pour des usages offensifs : pas de capacité de port de charge utile offensive, pas de liaison de commande compatible avec des systèmes d'armes. C'est dans les spécifications contractuelles.

== Questions pratiques

*"Vais-je être concerné par ce projet ?"*

Si vous travaillez dans les équipes R&D, Software, Hardware, Test ou Cybersécurité, vous pourriez être sollicité. Cependant, seules les personnes directement impliquées dans le projet devront obtenir une habilitation de sécurité.

*"L'habilitation de sécurité est-elle obligatoire pour rester chez Novatics ?"*

Non. Seules les personnes travaillant sur le projet N-RECON doivent être habilitées. Les autres activités de Novatics continuent normalement sans exigence d'habilitation.

*"Que se passe-t-il si je ne veux pas travailler sur ce projet ?"*

C'est votre droit. Nous avons suffisamment de projets et d'activités pour que chacun trouve sa place. Parlez-en à votre manager ou à David Chen (HR).

*"Les bureaux internationaux sont-ils concernés ?"*

Non. Le programme N-RECON est strictement français et géré depuis Toulouse. Les bureaux de Tokyo, San Francisco et Lima ne sont pas impliqués et continuent leurs activités commerciales habituelles.

== Questions financières

*"Ce contrat met-il Novatics en dépendance de la DGA ?"*

Non. Le contrat représente environ 10% de notre CA annuel moyen sur la période. C'est significatif mais pas une dépendance. Nos autres clients (Croix-Rouge, FEMA, Protection Civile, industriels) restent majoritaires.

*"Que se passe-t-il si les tranches conditionnelles ne sont pas levées ?"*

La tranche ferme (1,8 M€) finance entièrement la Phase 1 jusqu'en septembre 2026. Si les TC ne sont pas levées, le projet s'arrêterait après les prototypes, mais les investissements (Lab DR, compétences) bénéficieraient à nos autres activités.

#pagebreak()

// =============================================================================
// CHAPITRE 10 : CONTACTS ET GOUVERNANCE
// =============================================================================

= Contacts et gouvernance

== Équipe de direction du programme

#block(
  stroke: 1pt + novatics-gray-line,
  radius: 6pt,
  clip: true,
  width: 100%,
)[
  #set text(size: 9pt)
  #table(
    columns: (25%, 30%, 45%),
    stroke: (x, y) => (
      bottom: 0.5pt + novatics-gray-line,
      left: if x > 0 { 0.5pt + novatics-gray-line } else { 0pt },
    ),
    inset: 10pt,
    fill: (_, row) => if row == 0 { novatics-petrol } else { none },
    align: (left, left, left),
    text(fill: white, weight: "bold")[Rôle],
    text(fill: white, weight: "bold")[Nom],
    text(fill: white, weight: "bold")[Contact],

    [Sponsor Exécutif], [Alexandre Dubois], [alexandre.dubois\@novatics.io],
    [Directrice Technique], [Dr. Lena Rostova], [lena.rostova\@novatics.io],
    [Responsable Sécurité], [Mei Lin Zhao], [meilin.zhao\@novatics.io],
    [Chef de Projet], [Thomas Mercier], [thomas.mercier\@novatics.io],
    [Contact Urgences Sécurité], [Hotline], [security\@novatics.io],
  )
]

== Instances de gouvernance

*COPIL Programme (Mensuel)*
- Jour : Premier mardi du mois
- Heure : 14h00-16h00
- Lieu : Novatics HQ ou visio sécurisée

*Comité Sécurité DR (Bimensuel)*
- Jour : Semaines paires, jeudi
- Heure : 10h00-11h30
- Lieu : Novatics HQ

*Revue Technique (Hebdomadaire)*
- Jour : Mercredi
- Heure : 09h00-10h00
- Lieu : Lab DR (quand opérationnel) ou salle projet

== Sessions d'information prévues

Pour répondre à vos questions, plusieurs sessions d'information sont organisées :

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
    align: (left, left, left),
    text(fill: white, weight: "bold")[Date],
    text(fill: white, weight: "bold")[Format],
    text(fill: white, weight: "bold")[Public],

    [20 novembre 2025], [All-hands Toulouse (présentiel)], [Tous les collaborateurs Toulouse],
    [21 novembre 2025], [Visio internationale], [Bureaux Tokyo, SF, Lima],
    [22 novembre 2025], [Session Chambéry (présentiel)], [Équipe usine],
    [À définir], [Sessions individuelles], [Sur demande auprès de David Chen],
  )
]

#pagebreak()

// =============================================================================
// CONCLUSION
// =============================================================================

= Conclusion : Notre avenir, ensemble

#v(1em)

#image("/docs/assets/pictures/onboarding/hero/hero-about-robotics-lab-toulouse-engineers-2572x1536.png", width: 100%)

#v(1em)

Le contrat DGA marque une étape importante dans l'histoire de Novatics. Mais il ne change pas ce que nous sommes.

*Nous restons une entreprise dont la mission est de sauver des vies.*

Le N-Recon protégera des pompiers, des militaires spécialisés, des agents de sécurité nucléaire --- des hommes et des femmes qui risquent leur vie pour protéger les nôtres. C'est exactement ce que nous faisons déjà lors des séismes, des inondations, des catastrophes.

*Nous n'abandonnons rien de notre passé. Nous construisons notre avenir.*

Les investissements réalisés pour le programme N-RECON (Lab DR, compétences, partenariats) bénéficieront à l'ensemble de nos activités. Nous serons plus forts, plus résilients, plus professionnels.

*Nous avons besoin de chacun d'entre vous.*

Que vous travailliez directement sur le projet N-RECON ou que vous continuiez sur nos activités humanitaires, vous êtes tous essentiels à notre succès. C'est ensemble que nous avons construit Novatics. C'est ensemble que nous écrirons ce nouveau chapitre.

#v(2em)

#align(center)[
  #text(size: 14pt, weight: "bold", fill: novatics-petrol)[
    "La technologie n'a de sens que si elle sert l'humanité."
  ]

  #v(0.5em)

  #text(size: 10pt, style: "italic", fill: novatics-gray)[
    --- Alexandre Dubois, Fondateur de Novatics
  ]
]

#v(2em)

#callout(title: "Vos questions sont les bienvenues", type: "info")[
  N'hésitez pas à poser vos questions : \
  \
  -- À votre manager direct \
  -- À David Chen (HR) : david.chen\@novatics.io \
  -- Lors des sessions d'information prévues \
  -- Sur le canal Slack \#projet-nrecon (accès restreint équipe projet) \
  \
  *Aucune question n'est stupide. Nous sommes là pour y répondre.*
]

#v(2em)

#align(center)[
  #text(size: 9pt, fill: novatics-gray)[
    Document établi par Alexandre Dubois (CEO) \
    en collaboration avec Mei Lin Zhao (CISO) et David Chen (HR Director) \
    \
    Novembre 2025 \
    \
    *NOVATICS SAS --- Un Nouveau Chapitre*
  ]
]
