# Hands-On Labs

Real artifacts from real Azure deployments. Every file in here was deployed against a live Azure tenant, not copied from documentation.

## Why this matters

The certifications validate knowledge. The labs validate that I can actually do the work. For an infrastructure career pivot, the second matters more than the first.

## Structure

- `az-104/` — admin-level deployments (RBAC, storage, compute, basic networking)
- `az-700/` — networking deep dives (hub-spoke, BGP, ExpressRoute, Firewall, Private Link)

## Tooling preference

I use **Azure CLI** as the primary tool (cleaner than PowerShell for documentation purposes), with **Bicep** for declarative deployments. Terraform examples are included where multi-cloud equivalence is illustrative.

## Conventions

Each lab folder contains:
- `README.md` — what the lab demonstrates, what it builds, how to run it
- Resource definition files (`.bicep`, `.tf`, `.sh`, `.ps1`)
- `cleanup.sh` — tear down resources (cost discipline)
- Optional: architecture diagram

## Lab cost discipline

All labs include explicit cleanup scripts. I never leave resources running overnight. Most labs use the cheapest SKUs (Basic VPN Gateway, Standard_B1s VMs, etc.) since the goal is learning the configuration, not running production.

The one exception: ExpressRoute can't be cheaply replicated, so those labs are documentation + walkthroughs of Microsoft Learn content rather than deployed artifacts.
