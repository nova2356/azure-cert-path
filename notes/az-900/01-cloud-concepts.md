# 01 — Cloud Concepts

## Cloud service models

| Model | What you manage | What Azure manages | Example |
|-------|-----------------|--------------------|---------| 
| **IaaS** | OS, runtime, apps, data | Hardware, virtualization, network | Azure VM |
| **PaaS** | Apps, data | Everything below the runtime | App Service, Azure SQL |
| **SaaS** | Just usage / config | Everything | Microsoft 365 |

Mnemonic from on-prem perspective: more "aaS" letters = Azure handles more.

## Cloud deployment models

- **Public** — Azure datacenters, multi-tenant. Most common.
- **Private** — your own datacenter, you own everything. Azure Stack HCI/Hub if you want Azure tooling on private hardware.
- **Hybrid** — mix of both. Connected via VPN or ExpressRoute. Most enterprises live here.

## Shared responsibility model

The lower in the stack you go, the more Azure is responsible. The higher you go, the more you are. Key thing to remember: **data is always your responsibility**, regardless of model.

## CapEx vs OpEx

- **CapEx (on-prem traditional)** — buy servers upfront, depreciate over years
- **OpEx (cloud)** — pay-as-you-go, expense as consumed

This is the financial pitch leadership cares about. Worth understanding because the AZ-900 leans into it.

## High availability concepts

- **High availability (HA)** — service stays up despite component failures
- **Fault tolerance** — no downtime even during failures (more expensive)
- **Disaster recovery (DR)** — recover after a major event (different region, restore from backup)
- **Scalability** — vertical (bigger) vs horizontal (more)
- **Elasticity** — auto-scale up and down with demand

## AWS → Azure quick mapping for fundamentals

| AWS concept | Azure equivalent |
|-------------|------------------|
| Region | Region |
| Availability Zone | Availability Zone |
| VPC | VNet |
| EC2 | Virtual Machine |
| S3 | Blob Storage |
| IAM | Entra ID + Azure RBAC |
| Account | Subscription |
| AWS Organizations | Management Groups |

The cheat sheet in the repo root has the full version. For AZ-900, just internalize the top ~10.

## My notes / questions

_(fill in as you study)_
