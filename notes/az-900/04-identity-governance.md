# 04 — Identity, Governance, Compliance

## Microsoft Entra ID

- Formerly known as Azure Active Directory (renamed in 2023)
- Cloud-based identity and access management
- **Not** the same as Active Directory Domain Services (AD DS) — no Kerberos, no GPOs
- For traditional AD features in cloud: **Microsoft Entra Domain Services**

## Authentication features

- **Multi-Factor Authentication (MFA)** — something you know + have + are
- **Passwordless** — Windows Hello, FIDO2 keys, Authenticator app
- **Conditional Access** — policy-based access (if user X from location Y on device Z → require MFA)
- **External identities** — B2B (guest users) and B2C (Entra External ID for customer identity)

## Authorization — Azure RBAC

- Role assignment = **who** + **what role** + **on what scope**
- Built-in roles: Owner, Contributor, Reader, User Access Administrator + service-specific roles
- Custom roles possible
- Scope inherits down: management group → subscription → resource group → resource
- RBAC is **allow-only** — use Azure Policy or deny assignments for forbidden actions

## Azure Policy

- Defines rules and effects (deny, audit, append, modify)
- Initiative = grouped set of policies
- Used for compliance enforcement
- Different from RBAC: RBAC controls *who can do what*, Policy controls *what can be done*

## Resource locks

- **ReadOnly** — block any changes
- **CanNotDelete** — allow changes but block deletion
- Applies regardless of RBAC permissions

## Tags

- Key-value pairs on resources
- Used for cost tracking, ownership, environment labeling
- Inherited from RG only if Policy enforces it (not automatic)

## My notes / questions

_(fill in as you study)_
