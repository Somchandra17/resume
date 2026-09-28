#let zone = state("cv-zone", 1)

// One deliberate split. Weak so it is a no-op when already at the top of a page.
#let resume-split() = {
  zone.update(2)
  pagebreak(weak: true)
}

// Looser wrapped-line leading for Summary + Skills + current role + intern only.
// Bullet gaps are NOT this `list(spacing)`: markup lists are tight and ignore it.
// The real bullet gap is `list-gap` inside `chicv`'s list show rule.
#let page-one(body) = {
  set par(leading: 0.62em, spacing: 0.42em, justify: false)
  set list(indent: 0pt, body-indent: 0.45em, spacing: 0.42em)
  body
}

// Extra space between bullets, on top of the line box. Page 1 is the looser zone.
#let list-gap = (1.16em, 1.85em)

#let rule-stroke = 0.5pt + luma(125)

// Gap under the rule, before the heading words. Gap above the rule is the heading block's `above`.
#let chiline(after: 0.20em) = {
  line(length: 100%, stroke: rule-stroke)
  v(after)
}

#let display-url(uri) = {
  let s = uri
  if s.starts-with("https://") { s = s.slice(8) }
  else if s.starts-with("http://") { s = s.slice(7) }
  if s.starts-with("www.") { s = s.slice(4) }
  if s.ends-with("/") { s = s.slice(0, s.len() - 1) }
  s
}

// `icon` is accepted and ignored. No private-use glyphs in the text layer.
#let link-icon = "link"
#let iconlink(uri, text: [], icon: link-icon) = {
  let visible = text
  if type(uri) == str and (uri.starts-with("http://") or uri.starts-with("https://")) {
    visible = display-url(uri)
  } else if visible == [] {
    visible = uri
  }
  link(uri, visible)
}

#let githublink(userRepo) = {
  link("https://github.com/" + userRepo, userRepo)
}

// Kept so older imports still resolve. Not used by main.typ.
#let latex = {
  box(width: 2.55em, {
    [L]
    place(top, dx: 0.3em, text(size: 0.7em)[A])
    place(top, dx: 0.7em)[T]
    place(top, dx: 1.26em, dy: 0.22em)[E]
    place(top, dx: 1.8em)[X]
  })
}

// `#" "` is a real space glyph. Markup spaces next to `h(1fr)` collapse, so parsers
// that join same-line text read "Cyber Security EngineerBengaluru" without it.
#let cvhead(tl, tr, bl, br) = {
  [#tl#" "#h(1fr)#tr]
  if bl != [] or br != [] {
    linebreak()
    [#bl#" "#h(1fr)#br]
  }
}

// `keep: true` = unbreakable entry (short roles, projects). Default false so a long role can split.
// Empty `content` does not emit a linebreak (certifications).
#let cventry(
  tl: [],
  tr: [],
  bl: [],
  br: [],
  keep: false,
  content,
) = context {
  let z = zone.get()
  block(
    breakable: not keep,
    above: if z == 1 { 0.70em } else { 1.15em },
    below: if z == 1 { 0.18em } else { 0.28em },
    inset: 0pt,
    {
      cvhead(tl, tr, bl, br)
      if content != [] {
        linebreak()
        content
      }
    },
  )
}

// Two-line credential. No body, no trailing linebreak.
#let cvcert(tl: [], tr: [], bl: [], br: []) = context {
  let z = zone.get()
  block(
    breakable: false,
    above: if z == 1 { 0.50em } else { 0.36em },
    below: if z == 1 { 0.10em } else { 0.06em },
    inset: 0pt,
    cvhead(tl, tr, bl, br),
  )
}

#let chicv(body) = {
  set document(title: "Som Chandra", author: "Som Chandra")

  // Installed: TeX Gyre Pagella (regular/bold/italic/bold-italic), then Palatino.
  // Liberation Serif and EB Garamond are not installed here; listing them only warned.
  let the-font = (
    "TeX Gyre Pagella",
    "Palatino",
  )

  set text(
    size: 9pt,
    font: the-font,
    hyphenate: false,
    fill: rgb("000000"),
  )
  // One inline `state.json` otherwise embeds DejaVu Sans Mono. Keep it in the text font.
  show raw: set text(font: the-font)
  // Page 2 density. `#page-one` overrides paragraph leading for page 1.
  // Bullet gap: tight markup lists ignore `set list(spacing)`, so rebuild them once.
  set par(leading: 0.65em, spacing: 0.48em, justify: false)
  set list(indent: 0pt, body-indent: 0.45em, spacing: list-gap.at(1))
  show list: it => context {
    if not it.tight {
      it
    } else {
      list(
        tight: false,
        spacing: list-gap.at(zone.get() - 1),
        indent: 0pt,
        body-indent: 0.45em,
        marker: it.marker,
        ..it.children,
      )
    }
  }

  show heading.where(level: 1): it => {
    set text(size: 18pt, weight: "light", font: the-font)
    // 12pt below: name em-box clears the contact line by ~6.7pt (8pt below cleared it by ~2.7pt).
    block(above: 0pt, below: 12pt, sticky: true)[#it]
  }

  show heading.where(level: 2): it => context {
    let z = zone.get()
    set text(size: 12pt, font: the-font, weight: "bold")
    block(
      sticky: true,
      breakable: false,
      above: if z == 1 { 0.90em } else { 1.35em },
      below: if z == 1 { 0.34em } else { 0.50em },
    )[
      #chiline(after: if z == 1 { 0.36em } else { 0.40em })
      #it
    ]
  }

  // Real link annotations, plain black text. No underline (descenders at 9pt; not an ATS signal).
  show link: it => text(fill: rgb("000000"), it)

  // Single column. No page number: the old "1 / 1" footer was extracted as body text ("1/2").
  // 0.5cm x / 0.9cm y kept — ink sits on the margin, not past the page edge.
  set page(
    margin: (x: 0.5cm, y: 0.9cm),
    numbering: none,
    header: none,
    footer: none,
  )

  body
}
