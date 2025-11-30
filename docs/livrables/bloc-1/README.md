# 📂 Dossier de Preuves - Bloc 1 (RNCP40897)

**Titre :** Expert en Cybersécurité
**Bloc 1 :** Conception et stratégie de sécurité des systèmes d'information

## CONTEXTE DU PROJET : "Novatics Cloud"

Afin de démontrer la maîtrise des compétences du Bloc 1 dans un cadre opérationnel réaliste, l'ensemble des livrables a été produit pour le compte de **Novatics Cloud** (entreprise fictive simulée).

> **Scénario :** Novatics Cloud est une entreprise technologique soumise à de fortes contraintes réglementaires (RGPD, NIS2). La direction a mandaté la refonte de sa stratégie de sécurité pour élever son niveau de maturité et préparer une certification ISO 27001.

-----

## 🗺️ Matrice de Couverture des Compétences

Ce tableau fait le lien entre les **Livrables Attendus** par le référentiel de certification et les **Livrables Réels** (Documents professionnels) produits pour ce projet.

### Activité B1.A1 - Étude de l'écosystème de l'organisation

| Compétence Visée | Exigence du Titre (Livrable Attendu) | **Livrables Réels (Dossier Projet)** |
| :--- | :--- | :--- |
| **B1.A1.C1**<br>Auditer l'organisation | Présentation de l'organisation (organigramme, parties prenantes, schéma fonctionnel) | **1. Fiche d'identité SSI** (Note de cadrage)<br>**2. Organigramme fonctionnel SSI** (avec RACI)<br>**3. Registre des parties prenantes** (Internes/Externes)<br>**4. Schéma fonctionnel** des processus métiers critiques |
| **B1.A1.C2**<br>Établir la cartographie du SI | Cartographie du système d'information (SI) | **5. Cartographie macro du SI** (Schéma d'urbanisation)<br>**6. Inventaire des actifs critiques** (Registre des assets)<br>**7. Matrice des flux** de données sensibles |
| **B1.A1.C3**<br>Assurer une veille tech. | Rapport de veille technique, réglementaire et normative | **8. Rapport de veille stratégique** (Menaces sectorielles + réglem.)<br>**9. Tableau de conformité réglementaire** (NIS2, RGPD, LPM, ISO) |
| **B1.A1.C4**<br>Réaliser une analyse des risques | Cartographie des risques résultant de l'analyse | **10. Rapport d'analyse de risques EBIOS RM** (Complet)<br>**11. Cartographie des risques** (Matrice 5x5 + Heatmap)<br>**12. Fiches de risques** (Détail des top 5 scénarios) |

### Activité B1.A2 - Conception de la stratégie de sécurité

| Compétence Visée | Exigence du Titre (Livrable Attendu) | **Livrables Réels (Dossier Projet)** |
| :--- | :--- | :--- |
| **B1.A2.C1**<br>Définir la PSSI | Note de cadrage de la Politique de Sécurité du SI | **13. Note de cadrage PSSI** (Stratégie pour le COMEX)<br>**14. Charte de sécurité SI** (Version diffusables aux employés) |
| **B1.A2.C2**<br>Réaliser une analyse des écarts | Synthèse du rapport d'analyse des écarts (Gap Analysis) | **15. Rapport de Gap Analysis** (État actuel vs Cible ISO 27001)<br>**16. Tableau de maturité SSI** (Scoring par domaine) |
| **B1.A2.C3**<br>Définir un plan d'actions | Plan d'actions de sécurité défini | **17. Plan d'actions SSI pluriannuel (PAS)** avec budget<br>**18. Feuille de route projets SSI** (Roadmap visuelle) |

### Activité B1.A3 - Préparation du déploiement de la stratégie

| Compétence Visée | Exigence du Titre (Livrable Attendu) | **Livrables Réels (Dossier Projet)** |
| :--- | :--- | :--- |
| **B1.A3.C1**<br>Élaborer le corpus documentaire | Liste des documents clés encadrant la sécurité du SI | **19. Référentiel documentaire SSI** (Liste + Statut + Priorité)<br>**20. Template de procédure type** (Ex: Gestion des accès) |
| **B1.A3.C2**<br>Concevoir les plans de résilience | Plan de sauvegarde/PRA/PCA/PSI du SI | **21. Stratégie de continuité et reprise** (Cadrage PCA/PRA)<br>**22. Fiche réflexe PCA** (Scénario critique : perte Novatics Cloud)<br>**23. Plan de sauvegarde** (Politique backup 3-2-1) |
| **B1.A3.C3**<br>Élaborer un plan de sensibilisation | Plan de sensibilisation et de formation des utilisateurs | **24. Plan de sensibilisation annuel** (Programme + Calendrier)<br>**25. Kit de sensibilisation** (Supports par population cible) |

-----

## 🛠️ Méthodologie et Standards Utilisés

Pour garantir la pertinence professionnelle des livrables "Novatics Cloud", les méthodologies suivantes ont été appliquées :

  * **Analyse de Risques :** Méthode **EBIOS RM** (ANSSI).
  * **Conformité :** Mapping sur les exigences **ISO/IEC 27001:2022**.
  * **Réglementaire :** Prise en compte des directives **NIS 2** et du **RGPD**.
  * **Gestion de Projet :** Approche par priorisation des risques (Risk-Based Approach).

-----

## 📂 Organisation du Dépôt

```text
.
├── GUIDELINES.md
├── LICENSE
├── README.md
├── docs
│   ├── assets
│   │   ├── draw-io-schemas
│   │   │   ├── B1-A1-C1-03-matrice-mendelow-parties-prenantes.drawio
│   │   │   ├── B1-A1-C1-04-schema-chaine-valeur.drawio
│   │   │   ├── B1-A1-C1-04-schema-flux-donnees.drawio
│   │   │   └── B1-A1-C1-04-schema-fonctionnel-global.drawio
│   │   ├── pictures
│   │   │   ├── logo
│   │   │   │   ├── novatics-full-logo.png
│   │   │   │   └── novatics-logo.png
│   │   │   ├── onboarding
│   │   │   │   ├── existing-robots
│   │   │   │   │   ├── novatics-n-eye-drone-landscape-2663x1452.png
│   │   │   │   │   ├── novatics-n-eye-drone-studio-1892x1892.png
│   │   │   │   │   ├── novatics-n-seeker-drone-landscape-2592x1414.png
│   │   │   │   │   ├── novatics-n-seeker-drone-studio-1826x1826.png
│   │   │   │   │   ├── novatics-n-sonar-landscape-2499x13003.png
│   │   │   │   │   └── novatics-n-sonar-studio-1827x1827.png
│   │   │   │   ├── hero
│   │   │   │   │   ├── hero-about-robotics-lab-toulouse-engineers-2572x1536.png
│   │   │   │   │   ├── hero-contact-chambery-factory-building-2572x1536.png
│   │   │   │   │   └── hero-contact-toulouse-campus-building-2572x1536.png
│   │   │   │   ├── icons
│   │   │   │   │   ├── icon-24-7-support-2048x2048.png
│   │   │   │   │   ├── icon-ai-detection-2048x2048.png
│   │   │   │   │   ├── icon-battery-2048x2048.png
│   │   │   │   │   ├── icon-certificate-2048x2048.png
│   │   │   │   │   ├── icon-lidar-2048x2048.png
│   │   │   │   │   ├── icon-mesh-network-2048x2048.png
│   │   │   │   │   ├── icon-thermal-camera-2048x2048.png
│   │   │   │   │   ├── icon-training-2048x2048.png
│   │   │   │   │   ├── icon-waterproof-2048x2048.png
│   │   │   │   │   └── icon-wind-resistant-2048x2048.png
│   │   │   │   └── team-members
│   │   │   │       ├── cco-sarah-al-fayed-1856x2304.png
│   │   │   │       ├── ceo-alexandre-dubois-1856x2304.png
│   │   │   │       ├── cfo-claire-delacroix-1856x2304.png
│   │   │   │       ├── ciso-mei-lin-zhao-1856x2304.png
│   │   │   │       ├── coo-marco-rossi-1856x2304.png
│   │   │   │       ├── cso-marc-tiberi-1856x2304.png
│   │   │   │       ├── cto-lena-rostova-1856x2304.png
│   │   │   │       ├── ho-legal-beatrice-moreau-1856x2304.png
│   │   │   │       └── hr-director-david-chen-1856x2304.png
│   │   │   └── use-cases
│   │   │       ├── helene-hurricane-puerto-rico-2024-1860x1392.png
│   │   │       ├── houston-flood-2017-2526x1421.jpg
│   │   │       ├── myanmar-hearthquake-2025-4002x2668.png
│   │   │       ├── nepal-earthquake-2015-aftermath-rubble-5670x3840.jpg
│   │   │       ├── nuclear-accident-fukushima-2011-1417x956.png
│   │   │       └── terrorist-attack-bri-assault-bataclan-2015-2048x1363.png
│   │   └── schemas
│   │       ├── B1-A1-C1-03-matrice-mendelow-parties-prenantes.png
│   │       ├── B1-A1-C1-04-schema-chaine-valeur.png
│   │       ├── B1-A1-C1-04-schema-flux-donnees.png
│   │       └── B1-A1-C1-04-schema-fonctionnel-global.png
│   ├── livrables
│   │   ├── bloc-1
│   │   │   ├── B1-A1-C1-01-fiche-identite-ssi.typ
│   │   │   ├── B1-A1-C1-02-organigramme-raci.typ
│   │   │   ├── B1-A1-C1-03-registre-parties-prenantes.typ
│   │   │   ├── B1-A1-C1-04-schema-fonctionnel-processus-metiers.typ
│   │   │   └── README.md
│   │   ├── bloc-2
│   │   │   └── README.md
│   │   ├── bloc-3
│   │   │   └── README.md
│   │   ├── bloc-4
│   │   │   └── README.md
│   │   └── general
│   │       ├── internal-guide-onboarding.typ
│   │       └── internal-note-information-dga.typ
│   ├── output
│   ├── rncp
│   │   ├── RNCP40897 - Expert en cybersécurité.pdf
│   │   ├── RNCP40897 - Expert en cybersécurité.pdf:Zone.Identifier
│   │   ├── RNCP40897 - Référentiel de certification d'Expert en cybersécurité.pdf
│   │   └── RNCP40897 - Référentiel de certification d'Expert en cybersécurité.pdf:Zone.Identifier
│   └── templates
│       └── novatics-template.typ
└── scripts
    └── build.sh

23 directories, 63 files
```
