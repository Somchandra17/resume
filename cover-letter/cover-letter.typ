// Cover letter in the same type as main.pdf.
// Generic build:   typst compile cover-letter.typ Som_Chandra_Cover_Letter.pdf
// Tailored build:  typst compile cover-letter.typ out.pdf \
//                    --input company="Acme" --input role="Product Security Engineer" \
//                    --input manager="Jane Doe" --input why="One sentence on why Acme."
#let company = sys.inputs.at("company", default: none)
#let role = sys.inputs.at("role", default: none)
#let manager = sys.inputs.at("manager", default: none)
#let why = sys.inputs.at("why", default: none)

#let the-font = ("TeX Gyre Pagella", "Palatino")

#set document(title: "Som Chandra - Cover Letter", author: "Som Chandra")
#set page(paper: "a4", margin: (x: 2.2cm, y: 2cm), numbering: none)
#set text(size: 10.5pt, font: the-font, hyphenate: false, fill: rgb("000000"))
#set par(justify: false, leading: 0.68em, spacing: 1.15em)
#show link: it => text(fill: rgb("000000"), it)

#text(size: 18pt, weight: "light")[#smallcaps[Som Chandra]]
#v(-0.4em)
#text(size: 9.5pt)[
  #link("mailto:somchandra.infosec@gmail.com")[somchandra.infosec\@gmail.com]
  | #link("tel:+919507988170")[+91 9507988170]
  | #link("https://github.com/somchandra17")[github.com/somchandra17] \
  #link("https://www.linkedin.com/in/somchandra17/")[linkedin.com/in/somchandra17]
  | #link("https://somm.tf")[somm.tf]
]
#v(-0.5em)
#line(length: 100%, stroke: 0.5pt + luma(125))

#datetime.today().display("[day] [month repr:long] [year]")

Dear #if manager != none [#manager] else [Hiring Team],

#if company != none and role != none [
  I'm applying for the #role role at #company.
] else if company != none [
  I'm applying for an application security role at #company.
] else [
  I'm applying for an application security role on your team.
]
I have spent the last two and a half years at MoveInSync, first as an application security intern and, since June 2025, as a cyber security engineer, testing web, API, and Android/iOS products and building the tools that make that testing faster.

In FY2025--26 I reported 156 VAPT findings across 10 internal test cycles, 42 of them Critical, including broken access control, IDOR, and unauthenticated API exposure. I map each finding from CVSS to a fix SLA and follow it through with engineering, and about 93% of the tickets assigned so far are closed. I also run external VAPT with four outside vendors: filtering their false positives, agreeing on compensating controls, and revalidating fixes before enterprise audits.

Much of my time goes into tooling. I built a 9-phase Android DAST framework that cut per-app testing from 1--2 days to under an hour; GQLSweep, a Burp extension that runs 170+ GraphQL checks from one right-click; and a Burp extension that decodes a proprietary compressed mobile protocol so its traffic can be actively tested. I have published the Android and iOS frameworks as TrashDroid and TrashiOS on GitHub.

I have also led incident response. For a CI/CD server intrusion, I reconstructed the attack from on-host artifacts, traced three separate attacker visits, and wrote the hardening worklist for the rebuilt host. I then drove the credential-exposure response, where read-only checks caught keys that had been reported as rotated but were still live.

Before MoveInSync I did bug bounty and responsible disclosure, with Hall of Fame recognition from Mastercard and Rakuten and 20+ NCIIPC India acknowledgments. I hold eWPTXv2 and CompTIA Security+.

#if why != none [
  #why

]
I would welcome the chance to talk about how I can help #if company != none [#company] else [your team] find and fix security issues earlier. My resume is attached, and more of my work is at #link("https://github.com/somchandra17")[github.com/somchandra17].

Sincerely,\
Som Chandra
