#import "chicv.typ": *

#show: chicv

#let months = ("Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec")
#let translate-date(month, year) = [#months.at(month - 1) #year]
#let current = [Present]

= #smallcaps[Som Chandra]

#text(size: 10pt)[
  #link("mailto:somchandra.infosec@gmail.com")[somchandra.infosec\@gmail.com]
  | #link("tel:+919507988170")[+91 9507988170]
  | #link("https://github.com/somchandra17")[github.com/somchandra17] \
  #link("https://www.linkedin.com/in/somchandra17/")[linkedin.com/in/somchandra17]
  | #link("https://tryhackme.com/p/somchandra17")[tryhackme.com/p/somchandra17]
  | #link("https://somm.tf")[somm.tf]
]

#page-one[
== Summary

- 156 internal findings, FY2025--26 (42 Critical/Blocker, 57 High, 57 Medium) across 10 web, API, and Android cycles, CVSS-to-SLA mapping
- Built three in-house tools now in team use: a 9-phase Android DAST framework (\~90% less time per app), GQLSweep (170+ GraphQL checks), and a Burp extension for a proprietary mobile protocol
- Certified CompTIA Security+ (SY0-701) and eWPTXv2; top 1% on TryHackMe; 20+ NCIIPC India responsible-disclosure acknowledgments

== Technical Skills

- *Application & API Security*: gray-box web/API penetration testing (VAPT), OWASP Top 10, GraphQL security, CVSS-to-SLA mapping
- *Mobile Offensive Security*: Android/iOS SAST/DAST, OWASP MASTG/MASVS, Frida/objection, SSL pinning, root/jailbreak detection
- *Security Automation*: Burp extension development (Montoya API/Java, Extender API/Jython), Python, Kotlin, FastAPI, VAPT-to-Jira
- *Attack Surface*: external recon and exposure checks (subfinder, amass, httpx, testssl.sh), Nessus scanning, and CVE validation before public templates
- *Incident Response*: root-cause analysis, attack reconstruction, credential-exposure response, and read-only rotation checks
- *Tools*: Burp Suite, Frida, objection, adb, drozer, apktool, Nessus, nuclei, libimobiledevice, Docker, Jira, AWS

== Experience

#cventry(
  tl: [*MoveInSync*],
  tr: [#translate-date(6, 2025) -- #current],
  bl: [_Cyber Security Engineer_],
  br: [Bengaluru, India],
)[
- Reported 156 FY2025--26 VAPT findings across 10 internal cycles on web, API, and Android, including an unauthenticated API, IDOR in billing reports, and a WebSocket leaking live cab location; drove CVSS-to-SLA remediation with engineering; 180 tickets reported, 100+ assigned, about 93% of assigned tickets closed
- Led root-cause analysis and attack reconstruction for a CI/CD server intrusion, tracing 3 separate attacker visits from on-host artifacts (file read, credential decryption, RCE, root), and wrote the hardening worklist for the rebuilt host
- Drove credential-exposure response: triaged the leaked secrets into a per-service rotation tracker, checked keys read-only from the owner side, and caught keys reported as rotated that were still live
- Built a 9-phase Android DAST framework (adb, drozer, apktool) that cut per-app assessment from 1--2 days to under 1 hour (about 90%), and that work contributed to the team declining a paid PortSwigger Burp DAST purchase
- Built *GQLSweep*, a Burp extension running 170+ automated GraphQL checks across 12 categories from one right-click, surfacing alias-abuse DoS and excessive data exposure later confirmed by an external vendor
- Owned external VAPT across four vendors and four major cycles (web, Android, iOS, Driver App): false-positive filtering (such as an SSL-pinning bypass that needed a rooted device and did not reproduce on production), compensating controls the vendor accepted, revalidation, and on-time reports for enterprise audits
- Built a Java Burp extension that decodes and re-encodes the Driver App zlib-compressed integer-array protocol, unlocking active testing of that traffic; later ported the extension to the Montoya API
- Ran the first in-house AI/LLM assessment of an internal chatbot; prompt injection bypassed tool-persona and policy controls, and that work became a reusable method for later assessments
- Migrated *Nessus* from Azure Windows to hardened AWS Linux and automated weekly Advanced scans
- Built *External VAPT to Jira*, which files an external VAPT report into Jira in one click instead of a 4--5 hour manual pass, and does not post until it is approved
- Built *VAPT Revalidator*, a FastAPI worker that retests IDOR and broken access control through Burp and writes the Jira comment only after a person approves it
- Manually validated Apache Tomcat CVE-2025-66614 (client-certificate verification bypass) and CVE-2026-24734 (OCSP revocation bypass) on UAT before public nuclei templates existed, and shared the results as a team reference
]

#cventry(
  tl: [*MoveInSync*],
  tr: [#translate-date(3, 2024) -- #translate-date(6, 2025)],
  bl: [_Application Security Intern_],
  br: [Bengaluru, India],
)[
- Raised critical reflected XSS findings on the transport-management API in internal manual and automated VAPT, and published the report
- Escalated critical issues to engineering leads the same day during a production-clone assessment
- Surfaced a gap on an Employee Experience employee-data call during an authentication retrofit; engineering wrapped the call in authentication
]
]

#resume-split()

#cventry(
  tl: [*Securaeon Initiative*],
  tr: [#translate-date(2, 2022) -- #translate-date(7, 2022)],
  bl: [_Cyber Security R&D Intern_],
  br: [Remote / Kolkata],
)[
- Created security walkthroughs, proof-of-concept material, and practical lab content for upcoming cybersecurity products and courses
]

#cventry(
  tl: [*Bugcrowd*],
  tr: [#translate-date(10, 2021) -- #translate-date(12, 2021)],
  bl: [_Security Researcher (freelance)_],
  br: [Remote],
)[
- Reported web vulnerabilities through open bug bounty programs, and wrote impact, proof of concept, and remediation context for program security teams
]

== Projects

#cventry(
  tl: [*TrashDroid*],
  tr: [#translate-date(3, 2026) -- #translate-date(7, 2026)],
  bl: [#githublink("Somchandra17/TrashDroid")],
  br: [],
)[
- Built the public counterpart of the internal Android DAST framework: nine Python phases orchestrating adb, drozer, apktool, and sqlite3
- Covered exported-component SQL injection and path traversal, SQLite deep-dumps, logcat, heap and /proc maps, ADB backup, manifest review, post-logout re-launch and intent extras, and PII and secret detection
- Added Frida 17 bypasses for SSL pinning, root detection, and debugger detection, plus an AI-review triage package
]

#cventry(
  tl: [*TrashiOS*],
  tr: [#translate-date(6, 2026)],
  bl: [#githublink("Somchandra17/TrashiOS")],
  br: [],
)[
- Built the public counterpart of the internal iOS framework: 13-phase SAST and DAST on a USB-connected jailbroken device via libimobiledevice, SSH-over-USB, and Frida/objection
- Mapped checks to OWASP MASTG and MASVS, from Info.plist and Mach-O through keychain protection class, URL schemes, backup, and pinning and jailbreak, and triaged the AI-ready package from an ETS UAT iOS build
]

#cventry(
  tl: [*Burp AI Agent*],
  tr: [#translate-date(4, 2026)],
  bl: [#link("https://github.com/six2dez/burp-ai-agent")[six2dez/burp-ai-agent]],
  br: [],
)[
- Merged an NVIDIA NIM backend and a reworked OpenAI-compatible backend (with HTTP 429 handling) into six2dez/burp-ai-agent, with registry, settings, and config-panel wiring (Kotlin, PR 44)
]

#cventry(
  tl: [*TrashRecon*],
  tr: [#translate-date(3, 2026) -- #translate-date(6, 2026)],
  bl: [#githublink("Somchandra17/TrashRecon")],
  br: [],
)[
- Dockerized recon across 17 tools and 10 phases, with resume support and structured JSON so finished tool outputs are skipped on rerun
]

#cventry(
  tl: [*TrashFrame*],
  tr: [#translate-date(6, 2026)],
  bl: [#githublink("Somchandra17/TrashFrame")],
  br: [#link("https://trash-frame.vercel.app")[trash-frame.vercel.app]],
)[
- Built a Next.js app that turns a Spotify album or song link into a printable poster, with 14 themes and DPI export for real frames
]

#cventry(
  tl: [*w-bonkers*],
  tr: [#translate-date(7, 2026)],
  bl: [#githublink("Somchandra17/w-bonkers")],
  br: [],
)[
- Built an NSE portfolio copilot for Claude Code and Codex: a deterministic plan file, Todoist order tasks, and local archives, with no auto-trading
]

== Certifications

- *eWPTXv2* -- eLearnSecurity Web Application Penetration Tester eXtreme, #translate-date(1, 2023)
- *CompTIA Security+ (SY0-701)*, #translate-date(12, 2024)

== Achievements

- *Hall of Fame disclosures*: Mastercard Inc. SSTI escalated to LFI (P1); Rakuten session fixation (P2); Chaturbate Inc. stored XSS (P2)
- *20+ NCIIPC India responsible-disclosure acknowledgments*: client-side authentication bypass, missing rate limits, XSS, SQL injection, and account takeover
- *Top 1%* on #link("https://tryhackme.com/p/somchandra17")[TryHackMe]
- *CTF*: 5th place, OWASPLPU CTF 2022; 9th place, WTFCTF 2022; 34th place, RuCTF 2022

== Education

#cventry(
  tl: [*B.Tech in Computer Science and Engineering (Hons.)*],
  tr: [#translate-date(6, 2021) -- #translate-date(5, 2025)],
  bl: [Lovely Professional University, Jalandhar, Punjab],
  br: [],
)[
- Specialization: Cybersecurity and Blockchain
]
