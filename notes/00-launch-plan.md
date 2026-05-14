# AZ-900 Resource Pack & Week-by-Week Launch Plan

**Start date:** Friday, May 15, 2026 @ 7pm
**Exam target:** Saturday, June 6, 2026
**Study cadence:** Mon / Wed / Fri @ 7pm + optional Saturday morning blocks

---

## Core resource links

### Primary course — Pluralsight AZ-900 Path
The full certification path (~6 hours of video + labs):
- **Path:** https://www.pluralsight.com/paths/microsoft-certified-azure-fundamentals-az-900

The path is broken into these courses (do them in order):
1. **AZ-900: Foundational Cloud Concepts** — https://www.pluralsight.com/courses/microsoft-azure-fundamentals-az-900-foundational-cloud-concepts
2. **AZ-900: Azure Architecture and Services** — https://www.pluralsight.com/courses/microsoft-azure-fundamentals-az-900-azure-architecture-and-services
3. **AZ-900: Identity, Deployment, and Management** (search within the path)
4. **AZ-900: Azure Security, Management, and Governance** (search within the path)
5. **AZ-900: Exam Preparation** — https://www.pluralsight.com/courses/microsoft-azure-fundamentals-az-900-exam-preparation

> **Tip:** Pluralsight's Cloud Sandboxes give you free temporary Azure subscriptions for labs — use these instead of burning your Azure free credit on AZ-900 work. Save the free credit for AZ-104 and AZ-700 where you'll need it for longer-running labs.

### Skill IQ baseline (do this before Friday)
Take this once **before** you start studying — gives you a numerical baseline and identifies your biggest gaps:
- **Microsoft Azure Skill IQ:** https://www.pluralsight.com/product/skill-iq

Screenshot your score and add to `notes/az-900/README.md`. You'll retake after the exam for a before/after comparison.

### Microsoft Learn — official free content
The official Microsoft learning paths for AZ-900 are split into 4 parts:

1. **Part 1 — Describe cloud concepts:** https://learn.microsoft.com/en-us/training/paths/microsoft-azure-fundamentals-describe-cloud-concepts/
2. **Part 2 — Describe Azure architecture and services:** https://learn.microsoft.com/en-us/training/paths/azure-fundamentals-describe-azure-architecture-services/
3. **Part 3 — Describe Azure management and governance:** https://learn.microsoft.com/en-us/training/paths/describe-azure-management-governance/
4. **Part 4 — Apply Azure skills in guided projects:** https://learn.microsoft.com/en-us/training/paths/azure-fundamentals-apply-skills-guided-projects/

Use these as **supplement** when a Pluralsight topic doesn't click — Microsoft's wording is closer to exam wording.

### Microsoft Learn free practice assessment
The single most valuable free resource. Same team writes these as writes the exam:
- **AZ-900 practice assessment:** https://learn.microsoft.com/en-us/credentials/certifications/azure-fundamentals/practice-assessment

Take this **at least 3 times** through the 3 weeks — different questions each time. Aim for 85%+ before scheduling the real exam.

### John Savill — YouTube (free supplement)
For final-week review and topic-specific deep dives when you're stuck:
- **AZ-900 Study Cram (one-take exam compression):** Search YouTube: `John Savill AZ-900 Study Cram`
- **Channel home:** https://www.youtube.com/@NTFAQGuy

### Exam scheduling
Book the exam **now** for Saturday June 6, 2026. Having the date locked creates real urgency.
- **Schedule exam:** https://learn.microsoft.com/en-us/credentials/certifications/azure-fundamentals/
- **Cost:** $99 USD (US pricing)
- **Format:** Online proctored (from home) or in-person at a test center

> Pearson VUE handles the actual delivery. Online proctored is easier — book at a time when you can guarantee a quiet room with no interruptions.

### Azure free account (for hands-on outside Cloud Sandbox)
- **Sign up:** https://azure.microsoft.com/en-us/free/

$200 credit for 30 days + 12 months of free tier on selected services. Use a personal email, not your work account.

---

## Week 1 — Cloud concepts & getting set up
**Dates:** May 15 – May 17

### Friday May 15 @ 7pm — Kickoff session (~90 min)
- [ ] Take Pluralsight Microsoft Azure **Skill IQ** (~15 min) → screenshot score → save to `notes/az-900/README.md`
- [ ] Create Azure free account → https://azure.microsoft.com/en-us/free/
- [ ] Schedule AZ-900 exam for Sat June 6 → https://learn.microsoft.com/en-us/credentials/certifications/azure-fundamentals/
- [ ] Start Pluralsight course 1: **Foundational Cloud Concepts** (modules 1–3, ~45 min) → https://www.pluralsight.com/courses/microsoft-azure-fundamentals-az-900-foundational-cloud-concepts

### Saturday May 16 (optional, ~1 hour)
- [ ] Finish Pluralsight course 1 (remaining modules)
- [ ] Update `notes/az-900/01-cloud-concepts.md` with your own notes on shared responsibility model + IaaS/PaaS/SaaS
- [ ] Commit and push to GitHub

---

## Week 2 — Core Azure services + identity/governance
**Dates:** May 18 – May 24

### Monday May 18 @ 7pm
- [ ] Pluralsight course 2: **AZ-900: Azure Architecture and Services** (first half) → https://www.pluralsight.com/courses/microsoft-azure-fundamentals-az-900-azure-architecture-and-services
- [ ] Focus on: regions, AZs, resource hierarchy, compute services

### Wednesday May 20 @ 7pm
- [ ] Pluralsight course 2 (second half): networking, storage services
- [ ] Hands-on in Pluralsight Cloud Sandbox: deploy a VM, create a storage account
- [ ] Update `notes/az-900/02-core-architecture.md` and `03-core-services.md`

### Friday May 22 @ 7pm
- [ ] Pluralsight course 3: **Identity, Deployment, and Management** (via the AZ-900 path)
- [ ] Cover: Entra ID basics, RBAC, Azure Policy, locks, tags
- [ ] Update `notes/az-900/04-identity-governance.md`

---

## Week 3 — Pricing, SLA, security, practice exams
**Dates:** May 25 – May 31

### Monday May 25 @ 7pm
- [ ] Pluralsight course 4: **Azure Security, Management, and Governance**
- [ ] Cover: pricing calculator, TCO, support plans, SLAs, Defender for Cloud basics
- [ ] Update `notes/az-900/05-management-monitoring.md`

### Wednesday May 27 @ 7pm
- [ ] Take **Microsoft Learn free practice assessment** (full run, no help, time yourself):
  https://learn.microsoft.com/en-us/credentials/certifications/azure-fundamentals/practice-assessment
- [ ] Review every wrong answer — write the topic in `notes/az-900/06-exam-prep.md` under "weak areas"
- [ ] Log score in the practice exam table

### Friday May 29 @ 7pm
- [ ] Pluralsight course 5: **Exam Preparation** → https://www.pluralsight.com/courses/microsoft-azure-fundamentals-az-900-exam-preparation
- [ ] Take Pluralsight's practice exam (included in the path)
- [ ] Log score, review weak areas

---

## Week 4 — Final review
**Dates:** June 1 – June 5

### Monday June 1 @ 7pm
- [ ] Targeted review on your top 3 weak areas (from `06-exam-prep.md`)
- [ ] Re-read Microsoft Learn modules for those topics

### Wednesday June 3 @ 7pm
- [ ] **Microsoft Learn practice assessment again** — should be 85%+ now
- [ ] If below 80%: pause and revisit weak areas before continuing

### Thursday June 4 @ 7pm (optional bonus session)
- [ ] **Watch Savill's AZ-900 Study Cram on YouTube** (one sitting, ~1 hour)
- [ ] Search: `John Savill AZ-900 Study Cram`
- [ ] Take notes only on things that didn't already click

### Friday June 5 @ 7pm — Light review only
- [ ] Skim your `notes/az-900/` files — your own writing is the best review material
- [ ] Confirm exam time, ID ready, quiet space booked
- [ ] **Do not take another practice exam** — anxiety beats marginal score gain
- [ ] Sleep early

### Saturday June 6 — EXAM DAY 🎯
- [ ] Light breakfast, hydrate
- [ ] Test the Pearson VUE OnVUE app 30 min before exam time
- [ ] Take the exam
- [ ] Pass, log the win in `notes/az-900/README.md`, screenshot the score report

---

## After passing — same day or next day
- [ ] Take Pluralsight Azure Skill IQ **again** → compare to baseline → screenshot
- [ ] Update `README.md` status table: AZ-900 → ✓ Passed
- [ ] Update LinkedIn with the badge (Microsoft will email you the credential link)
- [ ] Commit and push — public proof of progress
- [ ] Take a day off before starting AZ-104 on Monday June 8

---

## What to do if you fall behind

Things happen. If you miss a session:
- **Miss 1 session:** make it up on Saturday morning
- **Miss a full week:** push the exam date back one week (no penalty, just reschedule on the Microsoft Learn page)
- **Major life disruption:** pause cleanly. The plan is here to serve you, not stress you. Tell me what happened and we adjust.

The certification doesn't care when you pass — only that you do.
