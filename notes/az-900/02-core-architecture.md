# 02 — Core Azure Architecture

## Physical infrastructure hierarchy

```
Geography (e.g., US)
  └── Region (e.g., East US)
       └── Availability Zone (1, 2, 3)
            └── Datacenter
```

- **Region** = a geographic area with one or more datacenters
- **Region pair** = two regions in the same geography (e.g., East US ↔ West US) used for cross-region replication and DR. Updates roll out to only one of a pair at a time.
- **Availability Zone** = physically separate datacenter within a region, independent power/cooling/network. Not all regions have AZs.
- **Sovereign regions** = US Gov, China (operated by 21Vianet), Germany (legacy)

## Resource hierarchy (management/organization)

```
Tenant Root
  └── Management Group
       └── Management Group (can nest)
            └── Subscription
                 └── Resource Group
                      └── Resource (VM, storage, etc.)
```

Key rules:
- **Resources** can only belong to one resource group
- **Resource groups** can only belong to one subscription
- **RBAC and Policy** inherit downward through this hierarchy
- A resource group can contain resources from different regions

## Region selection — what to consider

1. **Compliance / data residency** — does data have to stay in a country?
2. **Service availability** — not all services in all regions (especially newer ones)
3. **Pricing** — varies by region (East US is usually cheapest)
4. **Latency** — proximity to users

## My notes / questions

_(fill in as you study)_
