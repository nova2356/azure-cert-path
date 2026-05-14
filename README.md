# Azure Certification Path

A structured journey from multi-site office IT infrastructure into Azure cloud networking and infrastructure engineering. This repo tracks my progress, notes, and hands-on lab work across the Microsoft Azure certification path with a focus on network engineering.

## Background

I currently run IT infrastructure for a company spanning 12 office locations — VMware virtualization, Cisco routing, multi-site networking, storage, and the day-to-day work of keeping production environments running. I'm AWS Cloud Practitioner certified and have hands-on experience designing and maintaining infrastructure at scale.

My company is Azure-heavy and has asked me to lead the move into Azure infrastructure, with a particular focus on networking. This repo is the public artifact of that pivot.

## The Path

Three certifications, ~5 months, ending October 2026.

| Cert | Focus | Target Date | Status |
|------|-------|-------------|--------|
| **AZ-900** | Azure Fundamentals | June 6, 2026 | In progress |
| **AZ-104** | Azure Administrator Associate | August 15, 2026 | Not started |
| **AZ-700** | Azure Network Engineer Associate | October 17, 2026 | Not started |

AZ-700 is the target. AZ-900 and AZ-104 are the foundation.

## Why This Path

Most cloud certification paths assume you're starting from a developer background. Mine doesn't. The on-premises infrastructure work I do every day — VLANs, BGP, route tables, site-to-site VPN tunnels, virtualization, storage — maps cleanly to Azure networking. Hub-and-spoke topologies, ExpressRoute, NSGs, UDRs, VNet peering: these aren't new concepts dressed up in cloud vocabulary. They're the same problems I've been solving for years, now expressed in Azure primitives.

The career bet is that infrastructure engineers who can speak both on-prem and cloud-native networking are scarce and valuable, particularly for hybrid enterprise environments. That's the role I'm building toward.

## Repo Contents

### `azure_cert_tracker.html`
Interactive study tracker covering all three certifications. Session-by-session checkboxes (Mon/Wed/Fri @ 7pm cadence), progress bars, and exam-date countdowns. Progress persists in browser localStorage.

### `aws_to_azure_cheatsheet.html`
Service mapping reference for AWS practitioners learning Azure. Includes the gotchas — places where the two clouds look similar but behave differently. Particularly useful for AZ-104 and AZ-700 prep when AWS muscle memory will lead you astray.

### `notes/`
Study notes organized by certification and domain. Written in my own words during study — not just exam dumps. The act of writing these is half the learning.

- `notes/az-900/` — fundamentals, cloud concepts, AWS↔Azure translation
- `notes/az-104/` — identity, storage, compute, networking, monitoring
- `notes/az-700/` — core networking, connectivity, app delivery, private access, security

### `labs/`
Hands-on lab work. Scripts (Bash, PowerShell, Azure CLI), Bicep templates, Terraform configurations, and architecture diagrams. Everything here was built and deployed in a real Azure tenant — not copied from documentation.

- `labs/az-104/` — admin-level deployments (RBAC, storage configs, VM scale sets, etc.)
- `labs/az-700/` — networking deep dives (hub-and-spoke, UDR forcing, Private Endpoints, App Gateway with WAF, etc.)

## Study Approach

**Cadence:** Monday, Wednesday, Friday at 7pm. Saturday morning reserved for longer hands-on sessions when needed.

**Primary resources:**
- John Savill's YouTube content (free, exceptional quality across all three exams)
- Microsoft Learn official paths (free, includes practice assessments)
- Tutorials Dojo and MeasureUp for paid practice exams

**Approach:**
- Build everything I study. No passive watching.
- Notes get committed here as I write them.
- Lab artifacts get committed here as I build them.
- Practice exams used as a feedback loop, not a study technique.

## What I'm Building Toward

Cloud networking and infrastructure engineering roles in hybrid enterprise environments. Long-term interest in Site Reliability Engineering with a networking focus. The Azure stack is the immediate priority given my current employer; AWS knowledge resumes after AZ-700, followed by Terraform (multi-cloud IaC) and Kubernetes.

## Contact

Open to conversations with hiring managers, fellow learners, or anyone navigating a similar pivot from traditional IT into cloud infrastructure.

---

*This is a working document. Updated as the journey unfolds.*
