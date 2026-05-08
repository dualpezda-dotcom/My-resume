// ======================================================
// Duvier Alexander Pérez David
// Professional Resume - Typst Version
// ======================================================

#set page(
  paper: "a4",
  margin: (
    x: 1.6cm,
    y: 1.5cm,
  ),
)

#set text(
  font: "Liberation Sans",
  size: 10pt,
  fill: rgb("#0f172a"),
)

#let primary = rgb("#1e3a8a")
#let secondary = rgb("#475569")
#let light = rgb("#e2e8f0")

// ======================================================
// COMPONENTS
// ======================================================

#let section-title(title) = [
  #v(0.9em)

  #text(
    fill: primary,
    weight: "bold",
    size: 11pt,
  )[
    #upper(title)
  ]

  #line(
    length: 100%,
    stroke: (
      paint: light,
      thickness: 1pt,
    ),
  )

  #v(0.5em)
]

#let tag(content) = box(
  fill: rgb("#f1f5f9"),
  inset: 4pt,
  radius: 3pt,
)[
  #text(
    size: 8pt,
    weight: "bold",
    fill: secondary,
  )[
    #upper(content)
  ]
]

#let experience-item(
  role,
  company,
  period,
  location,
  highlights,
) = [

  #grid(
    columns: (1fr, auto),
    gutter: 1em,

    [
      #text(
        weight: "bold",
        size: 11pt,
      )[
        #upper(role)
      ]
    ],

    [
      #text(
        size: 8.5pt,
        fill: secondary,
      )[
        #period
      ]
    ],
  )

  #text(
    fill: primary,
    weight: "bold",
    style: "italic",
    size: 9.5pt,
  )[
    #company
  ]

  #text(
    size: 8.5pt,
    fill: secondary,
  )[
    #location
  ]

  #v(0.4em)

  #for item in highlights [
    • #item
    #linebreak()
  ]

  #v(1.1em)
]

// ======================================================
// HEADER
// ======================================================

#grid(
  columns: (2fr, 1fr),
  gutter: 1em,

  [
    #text(
      size: 24pt,
      weight: "bold",
      fill: primary,
    )[
      Duvier Alexander Pérez David
    ]

    #v(0.2em)

    #text(
      size: 12pt,
      weight: "bold",
      fill: primary,
    )[
      PROJECT MANAGER - ACCOUNT COORDINATOR
    ]
  ],

  [
    #align(right)[

      Bogotá D.C., Colombia

      #linebreak()

      #link(
        "mailto:duvierperez@outlook.com",
        "duvierperez@outlook.com",
      )

      #linebreak()

      (+57) 3171700031
    ]
  ],
)

#v(1em)

#line(
  length: 100%,
  stroke: (
    paint: primary,
    thickness: 2pt,
  ),
)

#v(1.2em)

// ======================================================
// MAIN LAYOUT
// ======================================================

#grid(
  columns: (1fr, 2fr),
  gutter: 1.5cm,

  // ====================================================
  // LEFT COLUMN
  // ====================================================

  [

    // SKILLS
    #section-title[Skills]

    #grid(
      columns: (1fr, 1fr),
      gutter: 0.4em,

      [#tag[Project Management]],
      [#tag[Scrum]],

      [#tag[Monday.com]],
      [#tag[Copper CRM]],

      [#tag[Power BI]],
      [#tag[AI Workflows]],

      [#tag[HTML/CSS/JS]],
      [#tag[Responsive Design]],
    )

    #v(1.3em)

    // EDUCATION
    #section-title[Education]

    #text(weight: "bold")[
      Master’s Degree in Project Management
    ]

    #linebreak()

    #text(
      size: 8.5pt,
      fill: secondary,
    )[
      Northern International University
    ]

    #linebreak()

    #box(
      fill: rgb("#fef3c7"),
      inset: 3pt,
      radius: 3pt,
    )[
      #text(
        size: 7.5pt,
        weight: "bold",
        fill: rgb("#92400e"),
      )[
        IN PROGRESS
      ]
    ]

    #v(0.9em)

    #text(weight: "bold")[
      Bachelor’s Degree in International Business
    ]

    #linebreak()

    #text(
      size: 8.5pt,
      fill: secondary,
    )[
      Universidad de Medellín
    ]

    #v(1.3em)

    // CERTIFICATIONS
    #section-title[Certifications]

    • Business Intelligence with Power BI

    #text(
      size: 8pt,
      fill: secondary,
    )[
      Universidad de los Andes
    ]

    #v(0.6em)

    • PMI Project Management

    #text(
      size: 8pt,
      fill: secondary,
    )[
      Fundación Compensar
    ]

    #v(1.3em)

    // LANGUAGES
    #section-title[Languages]

    #text(weight: "bold")[Spanish]

    #linebreak()

    #text(
      size: 8.5pt,
      fill: secondary,
    )[
      Native
    ]

    #v(0.5em)

    #text(weight: "bold")[English]

    #linebreak()

    #text(
      size: 8.5pt,
      fill: secondary,
    )[
      Professional Working Proficiency
    ]
  ],

  // ====================================================
  // RIGHT COLUMN
  // ====================================================

  [

    // PROFILE
    #section-title[Professional Profile]

    Bilingual International Business professional with
    over 7 years of experience in project management,
    digital operations, CRM administration,
    KPI tracking, business intelligence,
    and AI-driven workflow optimization.

    Skilled in cross-functional coordination,
    operational management, agile methodologies,
    and process improvement within technology
    and educational environments.

    #v(1.5em)

    // EXPERIENCE
    #section-title[Professional Experience]

    #experience-item(
      "Account Coordinator",
      "OMNICOMMANDER",
      "Nov 2025 – Present",
      "Remote, Colombia",
      (
        "Coordinate communication between financial institutions and internal technical teams.",
        "Manage workflow operations and project tracking using Copper CRM and Monday.com.",
        "Coordinate tickets and cross-department workflows using collaborative project management tools, aligning design, marketing, SEO, and technical deliverables with client goals and deadlines. ",
        "Support KPI monitoring and cross-functional project execution.",
      ),
    )

    #experience-item(
      "Special Projects Coordinator",
      "Corporación Honorable Presbiterio Central",
      "Sep 2021 – Oct 2025",
      "Bogotá, Colombia",
      (
        "Led PRESVI, a digital education platform, overseeing implementation and logistics.",
        "Monitored project performance through KPI tracking and data analysis.",
        "Coordinated initiatives related to educational innovation and digital transformation.",
        "Supported institutional planning and workflow optimization projects.",
      ),
    )

    #experience-item(
      "Section Manager",
      "Decathlon Colombia",
      "2019 – 2021",
      "Medellín, Colombia",
      (
        "Provided customer support and commercial guidance in retail operations.",
        "Managed inventory organization and product presentation strategies.",
        "Supported sales performance goals through customer-focused service.",
        "Collaborated with team members to optimize in-store operational processes.",
        "Responsible for planning, facilitating and making profitable the means for the growth of the projects.",
      ),
    )
  ],
)