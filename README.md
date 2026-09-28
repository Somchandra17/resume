# Resume

This is my resume. I'm an application security engineer working on web, API, and mobile (Android/iOS) penetration testing, and I build the Burp extensions and automation that make that testing faster.

I keep three versions with the same content.

| File | What it is | When I use it |
|---|---|---|
| `Som_Chandra_Resume.pdf` | Calibri, standard section names, one column | My default for job portals and ATS forms |
| `Som_Chandra_Resume.docx` | Word source of the PDF above | When a portal asks for a Word file |
| `main.pdf` | Typst, TeX Gyre Pagella, with a Summary | Email, referrals, and sending straight to a hiring manager |
| `main-jetbrains.pdf` | `main.pdf` set in JetBrains Mono Nerd Font | Security-focused teams where the look fits |

I check that all three parse as clean text with pdf-parse, the extractor many ATS checkers use, so no words get glued together.

## Build

The Typst versions need [Typst](https://typst.app) and the fonts they use (TeX Gyre Pagella, JetBrainsMono NF).

```bash
typst compile main.typ main.pdf
typst compile main-jetbrains.typ main-jetbrains.pdf
```

I edit the Word version in `Som_Chandra_Resume.docx` and export it with LibreOffice:

```bash
soffice --headless --convert-to pdf Som_Chandra_Resume.docx
```

## Cover letter

`cover-letter/Som_Chandra_Cover_Letter.pdf` is my general cover letter, addressed to "Hiring Team". To tailor it, I pass the company, role, and hiring manager, plus an optional sentence on why I want to work there:

```bash
cd cover-letter
typst compile cover-letter.typ Som_Chandra_Cover_Letter_Acme.pdf \
  --input company="Acme" --input role="Product Security Engineer" \
  --input manager="Jane Doe" --input why="One sentence on why Acme."
```

The date is set when I build it.

## Files

- `main.typ`, `chicv.typ`: content and style for `main.pdf`
- `main-jetbrains.typ`, `chicv-jetbrains.typ`: the JetBrains Mono variant
- `cover-letter/cover-letter.typ`: the cover letter, in the same type as `main.pdf`

## Contact

- LinkedIn: [linkedin.com/in/somchandra17](https://www.linkedin.com/in/somchandra17/)
- GitHub: [github.com/somchandra17](https://github.com/somchandra17)
- Site: [somm.tf](https://somm.tf)
