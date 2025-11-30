// =============================================================================
// NOVATICS - Template document professionnel v6.0
// Corrections v6 : tableaux avec lignes visibles, icÃ´ne âœ“ pour success,
// tirets bleus pour listes, espacement sous-titres, roadmap-item agrandi
// =============================================================================

// -----------------------------------------------------------------------------
// CHARTE GRAPHIQUE NOVATICS
// -----------------------------------------------------------------------------
#let novatics-petrol = rgb("#2A526E")
#let novatics-petrol-light = rgb("#3A6B8E")
#let novatics-petrol-dark = rgb("#1A3A4E")
#let novatics-cyan = rgb("#41BEC7")
#let novatics-cyan-light = rgb("#61D4DD")
#let novatics-orange = rgb("#EF9636")
#let novatics-gold = rgb("#F7B94B")
#let novatics-white = rgb("#FFFFFF")
#let novatics-gray-light = rgb("#F1F5F9")
#let novatics-gray = rgb("#64748B")
#let novatics-gray-line = rgb("#E2E8F0")

// Couleurs sÃ©mantiques
#let color-critical = rgb("#DC2626")
#let color-high = novatics-orange
#let color-medium = novatics-gold
#let color-low = rgb("#22C55E")

// Couleurs TLP
#let tlp-colors = (
  "RED": rgb("#FF2B2B"),
  "AMBER": rgb("#FFC000"),
  "GREEN": rgb("#33FF00"),
  "CLEAR": rgb("#FFFFFF"),
)

// -----------------------------------------------------------------------------
// FONCTION TEMPLATE PRINCIPALE
// -----------------------------------------------------------------------------
#let novatics-doc(
  title: "Document",
  subtitle: none,
  doc-category: none,
  version: "1.0",
  date: datetime.today(),
  author: "Mei Lin ZHAO, CISO",
  tlp: "GREEN",
  reference: none,
  logo-path: none,
  landscape: false,
  body,
) = {
  let tlp-color = tlp-colors.at(tlp, default: tlp-colors.GREEN)
  let tlp-text-color = if tlp == "CLEAR" or tlp == "GREEN" { black } else { white }

  // Dimensions dynamiques selon l'orientation
  let page-width = if landscape { 29.7cm } else { 21cm }
  let page-height = if landscape { 21cm } else { 29.7cm }

  // Configuration de la page
  set page(
    paper: "a4",
    flipped: landscape,
    margin: (top: 2.5cm, bottom: 2cm, left: 2cm, right: 2cm),
    header: context {
      if counter(page).get().first() > 1 [
        #set text(size: 8pt, fill: novatics-gray)
        #grid(
          columns: (auto, 1fr, auto),
          align: (left, center, right),
          gutter: 10pt,
          if doc-category != none {
            box(
              fill: novatics-cyan,
              inset: (x: 8pt, y: 3pt),
              radius: 10pt,
            )[
              #text(size: 7pt, fill: white, weight: "bold")[#doc-category]
            ]
          },
          text(fill: novatics-petrol, weight: "medium")[#title],
          // Logo sans slogan
          image("/docs/assets/pictures/logo/novatics-logo.png", height: 1.2cm),
        )
        #v(-2pt)
        #line(length: 100%, stroke: 0.5pt + novatics-cyan)
      ]
    },
    footer: context {
      if counter(page).get().first() > 1 [
        #set text(size: 7pt, fill: novatics-gray)
        #line(length: 100%, stroke: 0.3pt + novatics-gray-light)
        #v(3pt)
        #grid(
          columns: (auto, 1fr, auto),
          align: (left, center, right),
          gutter: 8pt,
          box(
            fill: tlp-color,
            inset: (x: 6pt, y: 2pt),
            radius: 3pt,
          )[
            #text(size: 6pt, fill: tlp-text-color, weight: "bold")[TLP:#tlp]
          ],
          [#counter(page).display("1") / #context counter(page).final().first()],
          [v#version | #date.display("[day]/[month]/[year]")],
        )
      ]
    },
  )

  // Configuration du texte
  set text(font: "Liberation Sans", size: 10pt, lang: "fr", fill: novatics-petrol-dark)
  set par(justify: true, leading: 0.7em, first-line-indent: 0em)
  set par(spacing: 0.8em)
  set smartquote(enabled: false)

  // Configuration des titres numÃ©rotÃ©s
  set heading(numbering: "1.1.1")

  show heading.where(level: 1): it => {
    v(1.2em)
    block(width: 100%, inset: (bottom: 8pt))[
      #grid(
        columns: (4pt, 1fr),
        gutter: 12pt,
        rect(fill: novatics-cyan, width: 4pt, height: 1.2em, radius: 2pt),
        text(fill: novatics-petrol, weight: "bold", size: 14pt)[
          #if it.numbering != none { counter(heading).display() + " " }#it.body
        ],
      )
      #v(-5pt)
      #line(length: 100%, stroke: 1pt + novatics-gray-light)
    ]
    v(0.5em)
  }

  show heading.where(level: 2): it => {
    v(1em)
    text(fill: novatics-petrol, weight: "bold", size: 11pt)[
      #if it.numbering != none { counter(heading).display() + " " }#it.body
    ]
    v(0.4em)
  }

  show heading.where(level: 3): it => {
    v(0.7em)
    text(fill: novatics-petrol-light, weight: "semibold", size: 10pt)[
      #if it.numbering != none { counter(heading).display() + " " }#it.body
    ]
    v(0.3em)
  }

  // Liens
  show link: it => text(fill: novatics-cyan, it)

  // Listes avec tirets bleus
  set list(marker: text(fill: novatics-cyan)[--], indent: 1em)
  set enum(indent: 1em)

  // ==========================================================================
  // PAGE DE GARDE - Design moderne minimaliste avec fond gris clair
  // ==========================================================================

  // Fond gris très clair (comme le fond du logo)
  place(top + left, dx: -2cm, dy: -2.5cm, rect(fill: rgb("#fefefe"), width: page-width, height: page-height))

  // Bande supérieure petrol
  place(top + left, dx: -2cm, dy: -2.5cm, rect(fill: novatics-petrol, width: page-width, height: 1.5cm))

  // Ligne accent cyan
  place(top + left, dx: -2cm, dy: -1cm, rect(fill: novatics-cyan, width: page-width, height: 4pt))

  // Espacement vertical adapté à l'orientation
  let logo-height = if landscape { 4cm } else { 7cm }
  let v-space-1 = if landscape { 0.8cm } else { 2cm }
  let v-space-2 = if landscape { 0.5cm } else { 1.2cm }
  let v-space-3 = if landscape { 0.4cm } else { 1cm }
  let v-space-4 = if landscape { 0.4cm } else { 0.8cm }

  v(v-space-1)

  // Logo GRAND centré (avec slogan)
  align(center)[
    #if logo-path != none {
      image(logo-path, height: logo-height)
    } else {
      text(size: 48pt, weight: "bold", fill: novatics-petrol)[NOVATICS]
    }
  ]

  v(v-space-2)

  // Ligne de séparation fine
  align(center)[
    #line(length: 35%, stroke: 1pt + novatics-cyan)
  ]

  v(v-space-3)

  // Catégorie du document (pill)
  if doc-category != none {
    align(center)[
      #box(
        fill: novatics-cyan,
        inset: (x: 24pt, y: 10pt),
        radius: 20pt,
      )[
        #text(size: 11pt, weight: "bold", fill: novatics-white, tracking: 0.5pt)[#doc-category]
      ]
    ]
    v(v-space-4)
  }

  // Titre principal
  let title-size = if landscape { 22pt } else { 28pt }
  align(center)[
    #block(width: 85%)[
      #text(size: title-size, weight: "bold", fill: novatics-petrol)[#title]
      #if subtitle != none {
        v(0.5em)
        text(size: 13pt, fill: novatics-gray)[#subtitle]
      }
    ]
  ]

  v(v-space-2)

  // Cartouche d'informations - design avec bordure et fond blanc
  align(center)[
    #box(
      fill: white,
      stroke: 1.5pt + novatics-petrol,
      radius: 8pt,
      width: 65%,
      inset: 20pt,
    )[
      #set text(size: 9pt, fill: novatics-petrol-dark)
      #grid(
        columns: (1fr, 1fr, 1fr),
        gutter: 20pt,
        align(center)[
          #text(fill: novatics-gray, size: 8pt)[RÃ©fÃ©rence] \
          #text(weight: "semibold")[#if reference != none { reference } else { "NOV-SSI-001" }]
        ],
        align(center)[
          #text(fill: novatics-gray, size: 8pt)[Version] \
          #text(weight: "semibold")[#version]
        ],
        align(center)[
          #text(fill: novatics-gray, size: 8pt)[Date] \
          #text(weight: "semibold")[#date.display("[day]/[month]/[year]")]
        ],
      )
    ]
  ]

  v(v-space-4)

  // TLP séparé, bien visible
  align(center)[
    #box(
      fill: tlp-color,
      inset: (x: 16pt, y: 8pt),
      radius: 6pt,
    )[
      #text(fill: tlp-text-color, weight: "bold", size: 10pt)[TLP:#tlp]
    ]
  ]

  v(1fr)

  // Pied de page de garde
  align(center)[
    #text(size: 8pt, fill: novatics-gray)[
      NOVATICS SAS | 12 Avenue de l'AÃ©ronautique, 31400 Toulouse | www.novatics.io
    ]
  ]

  v(0.8cm)

  // Bande inférieure petrol
  place(bottom + left, dx: -2cm, dy: 2cm, rect(fill: novatics-petrol, width: page-width, height: 0.8cm))

  pagebreak()
  body
}

// -----------------------------------------------------------------------------
// COMPOSANTS RÃ‰UTILISABLES DE BASE
// -----------------------------------------------------------------------------

// Callout avec icÃ´ne ronde - v6: âœ“ pour success au lieu de v
#let callout(title: "Information", content, type: "info") = {
  let (bg, border, icon) = if type == "warning" {
    (rgb("#FEF3C7"), novatics-orange, "!")
  } else if type == "critical" {
    (rgb("#FEE2E2"), color-critical, "âœ—")
  } else if type == "success" {
    (rgb("#DCFCE7"), color-low, "âœ“")
  } else {
    // info par dÃ©faut
    (rgb("#E0F7FA"), novatics-cyan, "i")
  }

  block(
    width: 100%,
    inset: 0pt,
    radius: 6pt,
    clip: true,
  )[
    #grid(
      columns: (4pt, 1fr),
      rect(fill: border, width: 4pt, height: auto),
      block(fill: bg, inset: 12pt, width: 100%)[
        #grid(
          columns: (auto, 1fr),
          gutter: 10pt,
          align: horizon,
          // IcÃ´ne ronde (cercle parfait)
          box(
            fill: border,
            width: 22pt,
            height: 22pt,
            radius: 11pt,
            stroke: none,
          )[
            #align(center + horizon)[
              #text(fill: white, size: 11pt, weight: "bold")[#icon]
            ]
          ],
          text(weight: "bold", fill: border, size: 10pt)[#title],
        )
        #v(6pt)
        #text(size: 9pt)[#content]
      ],
    )
  ]
}

#let info-box = callout

// Tableau de mÃ©tadonnÃ©es - v6: avec TOUTES les lignes visibles
#let metadata-table(..pairs) = {
  let items = pairs.pos()
  block(
    stroke: 1pt + novatics-gray-line,
    radius: 6pt,
    clip: true,
    width: 100%,
  )[
    #set text(size: 9pt)
    #table(
      columns: (35%, 65%),
      stroke: 0.5pt + novatics-gray-line,
      inset: 10pt,
      fill: (col, _) => if col == 0 { novatics-gray-light } else { none },
      align: (left, left),
      ..items
        .map(pair => (
          text(weight: "semibold", fill: novatics-petrol)[#pair.at(0)],
          [#pair.at(1)],
        ))
        .flatten()
    )
  ]
}

// Badge de statut
#let status-badge(status) = {
  let (bg, fg) = if status == "ValidÃ©" or status == "Conforme" {
    (color-low, white)
  } else if status == "En cours" or status == "Partiel" {
    (novatics-orange, white)
  } else if status == "Critique" or status == "Non conforme" {
    (color-critical, white)
  } else if status == "Veille" {
    (novatics-gray, white)
  } else {
    (novatics-gray-light, novatics-petrol)
  }
  box(
    fill: bg,
    inset: (x: 8pt, y: 3pt),
    radius: 10pt,
    text(fill: fg, size: 7.5pt, weight: "bold")[#status],
  )
}

// Indicateur de criticitÃ© (sans point)
#let criticality(level) = {
  let color = if level == "Critique" { color-critical } else if level == "Ã‰levÃ©" { novatics-orange } else if (
    level == "ModÃ©rÃ©"
  ) { novatics-gold } else { color-low }

  box(
    inset: (x: 6pt, y: 2pt),
    radius: 4pt,
    fill: color.transparentize(85%),
  )[
    #text(fill: color, weight: "semibold", size: 8pt)[#level]
  ]
}

// KPI Card
#let kpi-card(value, label, accent: novatics-cyan) = {
  box(
    fill: novatics-gray-light,
    inset: 15pt,
    radius: 12pt,
    width: 100%,
  )[
    #align(center)[
      #text(size: 28pt, weight: "bold", fill: accent)[#value]
      #v(-8pt)
      #text(size: 8pt, fill: novatics-gray)[#label]
    ]
  ]
}

// Signature numÃ©rique fictive
#let digital-signature(name, date) = {
  let hash = (
    "SHA256:" + name.split(" ").map(w => w.at(0, default: "X")).join("") + date.replace("/", "").slice(0, 6) + "...7f3a"
  )
  box(
    fill: novatics-gray-light,
    inset: (x: 6pt, y: 3pt),
    radius: 4pt,
  )[
    #set text(size: 6pt, fill: novatics-gray, font: "Liberation Mono")
    #hash
  ]
}

// Historique des versions - SANS numÃ©ro, avec lignes visibles
#let version-history(..versions) = {
  let items = versions.pos()

  text(fill: novatics-petrol, weight: "bold", size: 14pt)[Historique des versions]
  v(0.5em)
  line(length: 100%, stroke: 1pt + novatics-gray-light)
  v(0.8em)

  block(
    stroke: 1pt + novatics-gray-line,
    radius: 6pt,
    clip: true,
    width: 100%,
  )[
    #set text(size: 9pt)
    #table(
      columns: (auto, auto, 1fr, auto),
      stroke: 0.5pt + novatics-gray-line,
      inset: 10pt,
      fill: (_, row) => if row == 0 { novatics-petrol } else { none },
      align: (center, center, left, center),
      text(fill: white, weight: "bold")[Version],
      text(fill: white, weight: "bold")[Date],
      text(fill: white, weight: "bold")[Modifications],
      text(fill: white, weight: "bold")[Auteur],
      ..items.map(v => (v.version, v.date, v.changes, v.author)).flatten(),
    )
  ]
}

// Tableau de validation - SANS numÃ©ro, avec lignes visibles
#let approval-table(items) = {
  text(fill: novatics-petrol, weight: "bold", size: 14pt)[Validation du document]
  v(0.5em)
  line(length: 100%, stroke: 1pt + novatics-gray-light)
  v(0.8em)

  block(
    stroke: 1pt + novatics-gray-line,
    radius: 6pt,
    clip: true,
    width: 100%,
  )[
    #set text(size: 9pt)
    #table(
      columns: (1fr, 1fr, auto, 1fr),
      stroke: 0.5pt + novatics-gray-line,
      inset: 10pt,
      fill: (_, row) => if row == 0 { novatics-petrol } else { none },
      align: (left, left, center, center),
      text(fill: white, weight: "bold")[RÃ´le],
      text(fill: white, weight: "bold")[Nom],
      text(fill: white, weight: "bold")[Date],
      text(fill: white, weight: "bold")[Signature Ã©lectronique],
      ..items.map(i => (i.role, i.name, i.date, digital-signature(i.name, i.date))).flatten(),
    )
  ]
}

// Table des matiÃ¨res - SANS numÃ©ro
#let custom-outline() = {
  text(fill: novatics-petrol, weight: "bold", size: 14pt)[Table des matiÃ¨res]
  v(0.5em)
  line(length: 100%, stroke: 1pt + novatics-gray-light)
  v(0.8em)
  outline(
    title: none,
    indent: 1.5em,
    depth: 2,
  )
}

// -----------------------------------------------------------------------------
// COMPOSANTS MÃ‰TIER - EBIOS RM, ISO 27001, PLANS D'ACTIONS
// -----------------------------------------------------------------------------

// Badge niveau de risque
#let risk-level(level) = {
  let (color, label) = if level == "Critique" or level == 4 {
    (color-critical, "Critique")
  } else if level == "Ã‰levÃ©" or level == 3 {
    (novatics-orange, "Ã‰levÃ©")
  } else if level == "ModÃ©rÃ©" or level == 2 {
    (novatics-gold, "ModÃ©rÃ©")
  } else {
    (color-low, "Faible")
  }

  box(
    fill: color,
    inset: (x: 10pt, y: 4pt),
    radius: 4pt,
  )[
    #text(fill: white, weight: "bold", size: 8pt)[#label]
  ]
}

// Fiche scÃ©nario de risque EBIOS RM - avec lignes visibles
#let risk-scenario-card(
  id: "SR-01",
  title: "ScÃ©nario de risque",
  source: "Source de risque",
  objective: "Objectif visÃ©",
  attack-path: "Chemin d'attaque",
  target-assets: (),
  impact: "Impact",
  likelihood: "Vraisemblance",
  risk-level-value: "Ã‰levÃ©",
  existing-controls: (),
  proposed-controls: (),
  residual-risk: "ModÃ©rÃ©",
  owner: "Responsable",
) = {
  block(
    stroke: 1.5pt + novatics-petrol,
    radius: 8pt,
    clip: true,
    width: 100%,
  )[
    // En-tÃªte
    #block(
      fill: novatics-petrol,
      width: 100%,
      inset: 12pt,
    )[
      #grid(
        columns: (auto, 1fr, auto),
        align: (left, left, right),
        gutter: 12pt,
        text(fill: novatics-cyan, weight: "bold", size: 11pt)[#id],
        text(fill: white, weight: "bold", size: 11pt)[#title],
        risk-level(risk-level-value),
      )
    ]

    // Corps
    #block(inset: 12pt)[
      #set text(size: 9pt)

      // Source et Objectif
      #grid(
        columns: (1fr, 1fr),
        gutter: 16pt,
        [
          #text(weight: "bold", fill: novatics-petrol)[Source de risque]
          #v(4pt)
          #source
        ],
        [
          #text(weight: "bold", fill: novatics-petrol)[Objectif visÃ© (OV)]
          #v(4pt)
          #objective
        ],
      )

      #v(12pt)

      // Chemin d'attaque
      #text(weight: "bold", fill: novatics-petrol)[Chemin d'attaque]
      #v(4pt)
      #attack-path

      #v(12pt)

      // Biens supports
      #text(weight: "bold", fill: novatics-petrol)[Biens supports impactÃ©s]
      #v(4pt)
      #{
        for asset in target-assets {
          box(
            fill: novatics-gray-light,
            inset: (x: 8pt, y: 4pt),
            radius: 4pt,
          )[#text(size: 8pt)[#asset]]
          h(6pt)
        }
      }

      #v(12pt)

      // Ã‰valuation
      #block(
        fill: novatics-gray-light,
        inset: 10pt,
        radius: 6pt,
        width: 100%,
      )[
        #grid(
          columns: (1fr, 1fr, 1fr),
          gutter: 12pt,
          [
            #text(weight: "bold", size: 8pt, fill: novatics-gray)[IMPACT]
            #v(2pt)
            #text(weight: "semibold")[#impact]
          ],
          [
            #text(weight: "bold", size: 8pt, fill: novatics-gray)[VRAISEMBLANCE]
            #v(2pt)
            #text(weight: "semibold")[#likelihood]
          ],
          [
            #text(weight: "bold", size: 8pt, fill: novatics-gray)[RISQUE BRUT]
            #v(2pt)
            #risk-level(risk-level-value)
          ],
        )
      ]

      #v(12pt)

      // Mesures
      #grid(
        columns: (1fr, 1fr),
        gutter: 16pt,
        [
          #text(weight: "bold", fill: novatics-petrol)[Mesures existantes]
          #v(4pt)
          #{
            for control in existing-controls {
              text(fill: novatics-cyan)[-- ]
              control
              linebreak()
            }
          }
        ],
        [
          #text(weight: "bold", fill: novatics-cyan)[Mesures proposÃ©es]
          #v(4pt)
          #{
            for control in proposed-controls {
              text(fill: novatics-cyan)[-- ]
              control
              linebreak()
            }
          }
        ],
      )

      #v(12pt)

      // Pied
      #line(length: 100%, stroke: 0.5pt + novatics-gray-line)
      #v(8pt)
      #grid(
        columns: (1fr, 1fr),
        gutter: 12pt,
        [
          #text(weight: "bold", size: 8pt, fill: novatics-gray)[RISQUE RÃ‰SIDUEL]
          #h(8pt)
          #risk-level(residual-risk)
        ],
        [
          #text(weight: "bold", size: 8pt, fill: novatics-gray)[PROPRIÃ‰TAIRE]
          #h(8pt)
          #text(weight: "semibold")[#owner]
        ],
      )
    ]
  ]
}

// Tableau Gap Analysis ISO 27001 - avec lignes visibles
#let gap-analysis-table(items) = {
  block(
    stroke: 1pt + novatics-gray-line,
    radius: 6pt,
    clip: true,
    width: 100%,
  )[
    #set text(size: 8pt)
    #table(
      columns: (12%, 25%, 18%, 12%, 33%),
      stroke: 0.5pt + novatics-gray-line,
      inset: 8pt,
      fill: (_, row) => if row == 0 { novatics-petrol } else { none },
      align: (center, left, center, center, left),
      text(fill: white, weight: "bold")[Clause],
      text(fill: white, weight: "bold")[Mesure],
      text(fill: white, weight: "bold")[Ã‰tat actuel],
      text(fill: white, weight: "bold")[PrioritÃ©],
      text(fill: white, weight: "bold")[Plan de remÃ©diation],
      ..items
        .map(i => (
          i.clause,
          i.measure,
          status-badge(i.status),
          criticality(i.priority),
          i.remediation,
        ))
        .flatten(),
    )
  ]
}

// Tableau Plan d'Actions SÃ©curitÃ© (PAS) - avec lignes visibles
#let action-plan-table(items) = {
  block(
    stroke: 1pt + novatics-gray-line,
    radius: 6pt,
    clip: true,
    width: 100%,
  )[
    #set text(size: 8pt)
    #table(
      columns: (8%, 28%, 14%, 12%, 12%, 12%, 14%),
      stroke: 0.5pt + novatics-gray-line,
      inset: 6pt,
      fill: (_, row) => if row == 0 { novatics-petrol } else { none },
      align: (center, left, center, center, center, center, center),
      text(fill: white, weight: "bold")[ID],
      text(fill: white, weight: "bold")[Action],
      text(fill: white, weight: "bold")[Responsable],
      text(fill: white, weight: "bold")[Ã‰chÃ©ance],
      text(fill: white, weight: "bold")[Budget],
      text(fill: white, weight: "bold")[Statut],
      text(fill: white, weight: "bold")[Risques],
      ..items
        .map(i => (
          text(weight: "semibold")[#i.id],
          i.action,
          i.owner,
          i.deadline,
          i.budget,
          status-badge(i.status),
          i.risks,
        ))
        .flatten(),
    )
  ]
}

// Matrice de risques 4Ã—4
#let risk-matrix() = {
  let cell-color(impact, likelihood) = {
    let score = impact * likelihood
    if score >= 12 { color-critical } else if score >= 8 { novatics-orange } else if score >= 4 { novatics-gold } else {
      color-low
    }
  }

  let cell(impact, likelihood) = {
    let color = cell-color(impact, likelihood)
    let label = if impact * likelihood >= 12 { "C" } else if impact * likelihood >= 8 { "E" } else if (
      impact * likelihood >= 4
    ) { "M" } else { "F" }

    box(
      fill: color,
      width: 100%,
      height: 100%,
      inset: 8pt,
    )[
      #align(center + horizon)[
        #text(fill: white, weight: "bold", size: 10pt)[#label]
      ]
    ]
  }

  block(
    stroke: 1pt + novatics-gray-line,
    radius: 6pt,
    clip: true,
  )[
    #set text(size: 8pt)
    #table(
      columns: (auto, 1fr, 1fr, 1fr, 1fr),
      rows: (auto, 40pt, 40pt, 40pt, 40pt),
      stroke: 0.5pt + novatics-gray-line,
      inset: 0pt,
      align: center + horizon,
      // Header row
      [],
      text(weight: "bold")[NÃ©gligeable (1)],
      text(weight: "bold")[LimitÃ© (2)],
      text(weight: "bold")[Important (3)],
      text(weight: "bold")[Critique (4)],
      // Row 4 - TrÃ¨s probable
      text(weight: "bold")[TrÃ¨s probable (4)],
      cell(1, 4), cell(2, 4), cell(3, 4), cell(4, 4),
      // Row 3 - Probable
      text(weight: "bold")[Probable (3)],
      cell(1, 3), cell(2, 3), cell(3, 3), cell(4, 3),
      // Row 2 - Possible
      text(weight: "bold")[Possible (2)],
      cell(1, 2), cell(2, 2), cell(3, 2), cell(4, 2),
      // Row 1 - Rare
      text(weight: "bold")[Rare (1)],
      cell(1, 1), cell(2, 1), cell(3, 1), cell(4, 1),
    )
  ]

  v(8pt)

  // LÃ©gende
  set text(size: 8pt)
  grid(
    columns: (auto, auto, auto, auto),
    gutter: 16pt,
    [#box(fill: color-critical, width: 12pt, height: 12pt, radius: 2pt) *C* = Critique],
    [#box(fill: novatics-orange, width: 12pt, height: 12pt, radius: 2pt) *E* = Ã‰levÃ©],
    [#box(fill: novatics-gold, width: 12pt, height: 12pt, radius: 2pt) *M* = ModÃ©rÃ©],
    [#box(fill: color-low, width: 12pt, height: 12pt, radius: 2pt) *F* = Faible],
  )
}

// Tableau RACI - avec lignes visibles
#let raci-table(activities, roles) = {
  let raci-badge(value) = {
    if value == none or value == "" { return [] }
    let (bg, fg) = if value == "R" { (novatics-cyan, white) } else if value == "A" {
      (novatics-petrol, white)
    } else if value == "C" { (novatics-gold, novatics-petrol-dark) } else if value == "I" {
      (novatics-gray-light, novatics-gray)
    } else { (white, novatics-gray) }

    box(
      fill: bg,
      inset: (x: 6pt, y: 3pt),
      radius: 4pt,
    )[
      #text(fill: fg, weight: "bold", size: 8pt)[#value]
    ]
  }

  let num-roles = roles.len()
  let col-widths = (40%,) + (60% / num-roles,) * num-roles

  block(
    stroke: 1pt + novatics-gray-line,
    radius: 6pt,
    clip: true,
    width: 100%,
  )[
    #set text(size: 8pt)
    #table(
      columns: col-widths,
      stroke: 0.5pt + novatics-gray-line,
      inset: 8pt,
      fill: (_, row) => if row == 0 { novatics-petrol } else { none },
      align: (left,) + (center,) * num-roles,
      // Header
      text(fill: white, weight: "bold")[ActivitÃ©],
      ..roles.map(r => text(fill: white, weight: "bold")[#r]),
      // Data rows
      ..activities
        .map(a => {
          let row = (a.activity,)
          for r in roles {
            row.push(raci-badge(a.at(r, default: "")))
          }
          row
        })
        .flatten()
    )
  ]

  v(8pt)

  // LÃ©gende RACI
  set text(size: 8pt)
  grid(
    columns: (auto, auto, auto, auto),
    gutter: 12pt,
    [#raci-badge("R") RÃ©alise], [#raci-badge("A") Approuve], [#raci-badge("C") ConsultÃ©], [#raci-badge("I") InformÃ©],
  )
}

// Ã‰lÃ©ment de roadmap/timeline - v6: bulles plus larges pour tenir sur une ligne
#let roadmap-item(quarter, year, title, items, accent: novatics-cyan) = {
  grid(
    columns: (100pt, 1fr),
    gutter: 16pt,
    [
      #box(
        fill: accent,
        inset: (x: 14pt, y: 8pt),
        radius: 20pt,
        width: 100%,
      )[
        #align(center)[
          #text(fill: white, weight: "bold", size: 9pt)[#quarter #year]
        ]
      ]
    ],
    [
      #text(weight: "bold", fill: novatics-petrol)[#title]
      #v(4pt)
      #set text(size: 9pt)
      #{
        for item in items {
          text(fill: novatics-cyan)[-- ]
          item
          linebreak()
        }
      }
    ],
  )
  v(12pt)
}

// Badge conformitÃ© rÃ©glementaire
#let compliance-badge(regulation) = {
  let (bg, icon) = if regulation == "NIS2" {
    (rgb("#1E40AF"), "EU")
  } else if regulation == "RGPD" {
    (rgb("#059669"), "DP")
  } else if regulation == "ISO 27001" {
    (rgb("#7C3AED"), "ISO")
  } else if regulation == "LPM" {
    (rgb("#DC2626"), "LPM")
  } else if regulation == "DR" {
    (rgb("#B91C1C"), "DR")
  } else {
    (novatics-gray, "?")
  }

  box(
    fill: bg,
    inset: (x: 8pt, y: 4pt),
    radius: 4pt,
  )[
    #text(fill: white, weight: "bold", size: 7pt)[#icon]
  ]
}

// Tableau de conformitÃ© multi-rÃ©glementaire - avec lignes visibles
#let compliance-matrix-table(items) = {
  block(
    stroke: 1pt + novatics-gray-line,
    radius: 6pt,
    clip: true,
    width: 100%,
  )[
    #set text(size: 8pt)
    #table(
      columns: (30%, 15%, 15%, 12%, 28%),
      stroke: 0.5pt + novatics-gray-line,
      inset: 8pt,
      fill: (_, row) => if row == 0 { novatics-petrol } else { none },
      align: (left, center, center, center, left),
      text(fill: white, weight: "bold")[Exigence],
      text(fill: white, weight: "bold")[RÃ©glementation],
      text(fill: white, weight: "bold")[ConformitÃ©],
      text(fill: white, weight: "bold")[PrioritÃ©],
      text(fill: white, weight: "bold")[Actions],
      ..items
        .map(i => (
          i.requirement,
          compliance-badge(i.regulation),
          status-badge(i.status),
          criticality(i.priority),
          i.actions,
        ))
        .flatten(),
    )
  ]
}

// -----------------------------------------------------------------------------
// NOUVEAUX COMPOSANTS v6
// -----------------------------------------------------------------------------

// Fiche portrait COMEX - photo Ã  droite, tableau avec lignes, expÃ©rience en bullet list
#let comex-portrait(
  name: "Nom",
  title: "Titre",
  photo-path: none,
  age: none,
  formation: none,
  experience: (),
  localisation: none,
  description: none,
  contact: none,
) = {
  grid(
    columns: (1fr, 120pt),
    gutter: 20pt,
    align: (left, top),
    [
      // Tableau infos
      #block(
        stroke: 1pt + novatics-gray-line,
        radius: 6pt,
        clip: true,
        width: 100%,
      )[
        #set text(size: 9pt)
        #table(
          columns: (30%, 70%),
          stroke: 0.5pt + novatics-gray-line,
          inset: 10pt,
          fill: (col, _) => if col == 0 { novatics-gray-light } else { none },
          align: (left, left),
          text(weight: "semibold", fill: novatics-petrol)[Ã‚ge], [#age],
          text(weight: "semibold", fill: novatics-petrol)[Formation], [#formation],
          text(weight: "semibold", fill: novatics-petrol)[ExpÃ©rience],
          [
            #{
              for exp in experience {
                text(fill: novatics-cyan)[-- ]
                exp
                linebreak()
              }
            }
          ],

          text(weight: "semibold", fill: novatics-petrol)[Localisation], [#localisation],
        )
      ]

      #v(0.8em)

      #if description != none {
        description
      }

      #v(1em)

      #if contact != none {
        [*Contact :* #contact]
      }
    ],
    [
      // Photo Ã  droite
      #if photo-path != none {
        image(photo-path, width: 100%)
      }
    ],
  )
}

// Bureau international - carte colorÃ©e
#let office-card(
  city: "Ville",
  country: "Pays",
  address: none,
  staff: none,
  mission: none,
  opening: none,
  accent: novatics-cyan,
) = {
  block(
    fill: accent.transparentize(90%),
    stroke: 1pt + accent,
    radius: 8pt,
    inset: 16pt,
    width: 100%,
  )[
    #text(weight: "bold", fill: accent, size: 11pt)[#city, #country]
    #v(8pt)
    #set text(size: 9pt)
    #if address != none {
      address
      v(6pt)
    }
    #if staff != none {
      [*Effectif :* #staff]
      v(4pt)
    }
    #if mission != none {
      [*Mission :* #mission]
      v(4pt)
    }
    #if opening != none {
      [*Ouverture :* #opening]
    }
  ]
}

// Signature stylisÃ©e (FR + EN)
#let signature-block(fr: none, en: none) = {
  block(
    fill: novatics-gray-light,
    radius: 8pt,
    inset: 20pt,
    width: 100%,
  )[
    #align(center)[
      #if en != none {
        text(style: "italic", size: 11pt, fill: novatics-petrol)[#en]
        v(8pt)
      }
      #if fr != none {
        text(style: "italic", size: 11pt, fill: novatics-cyan)[#fr]
      }
    ]
  ]
}
