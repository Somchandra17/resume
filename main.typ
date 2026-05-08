#import "chicv.typ": *

#show: chicv

#let months = ("Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec")
#let translate-date(month, year) = [#months.at(month - 1), #year]
#let current = [Present]

// Header
= #smallcaps[Som Chandra]

#text(size: 10pt)[
  #link("mailto:somchandra.infosec@gmail.com")[somchandra.infosec\@gmail.com] • 
  #iconlink("tel:+919507988170", icon: "phone", text: "9507988170") • 
  #iconlink("https://github.com/somchandra17", icon: "github", text: "somchandra17") • 
  #iconlink("https://www.linkedin.com/in/somchandra17/", icon: "linkedin", text: "somchandra17") • 
  #link("https://tryhackme.com/p/0xs0m")[TryHackMe] • 
  #iconlink("https://somm.tf", icon: "globe", text: "somm.tf") 
]

== Summary

- Application Security / Cyber Security Engineer focused on web, API, Android, and iOS VAPT, with hands-on experience in gray-box testing, mobile runtime analysis, security automation, vulnerability validation, and developer-facing remediation.
- Built and contributed to security tooling across Android DAST, external recon automation, Burp Suite AI-assisted testing, root detection, and iOS pentesting knowledge workflows using Python, Kotlin, Java, Bash, Docker, ADB, Frida, Burp Suite, Nessus, and related AppSec tooling.
- Security+ and eWPTXv2 certified; Top 1% on TryHackMe with Hall of Fame and 20+ NCIIPC India responsible-disclosure acknowledgments.

== Technical Skills

- *Application Security*: Web/API/Mobile VAPT, OWASP Top 10, OWASP MASVS, gray-box testing, manual exploitation, vulnerability triage, false-positive validation, secure remediation review
- *Mobile Security*: Android/iOS testing, root/jailbreak detection, SSL pinning validation and bypass testing, Frida runtime analysis, WebView security, Google Play Integrity API, anti-tampering concepts
- *Security Tools*: Burp Suite, OWASP ZAP, Nessus, Nmap, nuclei, Frida, MobSF, JADX, apktool, drozer, ADB, Postman, Wireshark, Ghidra, Volatility 3, Metasploit, testssl, Nikto
- *Automation & Development*: Python, Bash, Kotlin, Java, JavaScript, Node.js, C/JNI, SQLite, MySQL, REST, GraphQL, Docker, Git, Linux
- *Infrastructure & Workflow*: AWS EC2/AMI hardening checks, Kubernetes, Jenkins, Azure, Jira, Confluence, security reporting, vendor VAPT coordination

== Experience

#cventry(
  tl: [*MoveInSync*],
  tr: [#translate-date(6, 2025) -- #current],
  bl: [_Cyber Security Engineer_],
  br: [Bengaluru, Karnataka, India],
)[
- Conduct end-to-end VAPT across web, API, Android, iOS, and infrastructure surfaces using gray-box testing, manual validation, static/dynamic analysis, Burp Suite, Postman, Frida, MobSF, JADX, apktool, and Nessus.
- Convert vulnerabilities into actionable Jira tickets with evidence, reproduction steps, exploitability context, affected assets, remediation guidance, and closure validation.
- Built and enhanced internal AppSec automation for API inventory, external exposure review, endpoint risk detection, SQLite-backed result tracking, and repeatable security validation.
- Secured Android application flows against rooted-device abuse and Frida-based runtime attacks by integrating Google Play Integrity API and revalidating SSL pinning, WebView, and API-header controls.
- Coordinate external VAPT activities with vendors including Rudra and Coforge by preparing test accounts/builds, triaging findings, removing duplicates, validating fixes, and aligning stakeholders.
- Run Nessus AMI and compliance scans, apply plugin/configuration updates, tune checks, and verify results to reduce noisy findings before developer handoff.
]

#cventry(
  tl: [*MoveInSync*],
  tr: [#translate-date(1, 2025) -- #translate-date(5, 2025)],
  bl: [_Application Security Intern_],
  br: [Bengaluru, Karnataka, India],
)[
- Supported API, web, and mobile security testing through endpoint enumeration, manual vulnerability validation, evidence capture, and reproducible ticket creation.
- Performed pre-assessment sanity testing for Android/iOS builds to identify blocking issues before external VAPT engagements.
- Prototyped API discovery and external exposure checks that later informed reusable internal security automation.
- Assisted with Nessus scan review, API triage, reporting, documentation, and developer follow-up through remediation closure.
]

#cventry(
  tl: [*Securaeon Initiative*],
  tr: [#translate-date(2, 2022) -- #translate-date(7, 2022)],
  bl: [_Cyber Security R&D Intern_],
  br: [Remote/Kolkata, West Bengal],
)[
- Created security walkthroughs, proof-of-concept material, and practical lab content for upcoming cybersecurity products and courses.
]

#cventry(
  tl: [*Bugcrowd*],
  tr: [#translate-date(10, 2021) -- #translate-date(12, 2021)],
  bl: [_Security Researcher_],
  br: [Freelance],
)[
- Reported web security vulnerabilities through open bug bounty programs, including findings later recognized in Hall of Fame listings and responsible-disclosure acknowledgments.
- Communicated impact, proof of concept, and remediation context to program security teams to support timely validation and closure.
]

== Projects

#cventry(
  tl: [*Burp AI Agent - Upstream Open-Source Contribution*],
  tr: [#translate-date(4, 2026)],
  bl: [#link("https://github.com/six2dez/burp-ai-agent/pull/44")[six2dez/burp-ai-agent \#44]],
  br: [],
)[
- Contributed a merged PR to a Burp Suite extension that brings AI-assisted analysis, MCP tooling, privacy controls, and passive/active scanning into security workflows.
- Added NVIDIA NIM backend support in Kotlin by extending the OpenAI-compatible backend with streaming, payload customization, default headers, and custom health-check hooks instead of duplicating request logic.
- Implemented UI/settings persistence and improved HTTP 429 handling so backend errors no longer leave the chat workflow stuck, increasing reliability for AI-assisted Burp testing.
]

#cventry(
  tl: [*TrashDroid*],
  tr: [#translate-date(4, 2026)],
  bl: [#githublink("Somchandra17/TrashDroid")],
  br: [],
)[
- Built a terminal-based Android DAST framework that orchestrates ADB, drozer, apktool, sqlite3, logcat, screenshots, and filesystem analysis for mobile VAPT.
- Implemented 9 assessment phases covering exported components, manifests, backups, local storage, WebView data, logs, memory, post-logout behavior, and sensitive data exposure.
- Added AI-ready Markdown reporting, command logs, screenshots, and optional context-aware PII detection through regex, Presidio, and GLiNER modes for faster triage.
]

#cventry(
  tl: [*TrashRecon*],
  tr: [#translate-date(3, 2026)],
  bl: [#githublink("Somchandra17/TrashRecon")],
  br: [],
)[
- Dockerized a reconnaissance framework chaining 17 tools across 10 phases for external attack-surface mapping.
- Automated subdomain enumeration, DNS/ASN/CIDR mapping, all-port scanning, screenshots, takeover checks, endpoint crawling, GF pattern matching, exposed-key checks, and nuclei scans.
- Produces structured outputs including logs, JSON summaries, endpoint lists, takeover results, screenshots, vulnerability artifacts, and scan resumption support.
]

#cventry(
  tl: [*RootAppChecker*],
  tr: [#translate-date(7, 2024)],
  bl: [#githublink("Somchandra17/RootAppChecker")],
  br: [],
)[
- Developed an Android root-detection app using Java and native C/JNI checks for root files, SU binaries, BusyBox, Magisk traces, root apps, system properties, and integrity signals.
- Demonstrates mobile anti-tampering concepts through native-level checks and real-time root-status reporting for emulator and physical-device testing.
- Useful as a practical lab utility for validating root-detection logic, bypass scenarios, and mobile hardening assumptions.
]

== Certifications

#cventry(
  tl: [*CompTIA Security+ (SY0-701)*],
  tr: [#translate-date(12, 2024)],
  bl: [by CompTIA],
  br: [],
)[]

#cventry(
  tl: [*eWPTXv2 - eLearnSecurity Web Application Penetration Tester eXtreme*],
  tr: [#translate-date(1, 2023)],
  bl: [by eLearnSecurity],
  br: [],
)[]


== Achievements

*Top 1% on TryHackMe*

*Security Recognition*
- *Mastercard Inc.*: SSTI escalated to LFI (P1)
- *Rakuten*: Session Fixation (P2)  
- *Chaturbate Inc.*: Stored XSS (P2)

*20+ NCIIPC India Acknowledgments*
- Reported client-side authentication bypass, missing rate limits, XSS, SQL injection, and account takeover vulnerabilities through responsible disclosure.

*CTFs*
- 5th Place, OWASPLPU CTF 2022
- 9th Place, WTFCTF 2022
- 34th Place, RuCTF 2022

== Education

#cventry(
  tl: [*B.Tech in Computer Science and Engineering (Hons.)*],
  tr: [#translate-date(6, 2021) -- #translate-date(5, 2025)],
  bl: [Lovely Professional University, Jalandhar, Punjab],
  br: [],
)[
- Specialization: Cybersecurity and Blockchain
- CGPA: 7.73
]
