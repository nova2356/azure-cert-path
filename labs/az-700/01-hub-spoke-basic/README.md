# Lab 01 — Basic Hub-and-Spoke Topology

## What this lab demonstrates

Builds a classic Azure hub-and-spoke network with one hub VNet and two spoke VNets, all peered. Deploys a test VM in each spoke and verifies:

1. Hub-to-spoke connectivity works (peering, expected)
2. Spoke-to-spoke connectivity **does not** work (peering is not transitive)

This is the foundational topology that every subsequent AZ-700 lab will extend.

## Architecture

```
                    ┌─────────────────────┐
                    │  hub-vnet           │
                    │  10.0.0.0/16        │
                    │  ┌───────────────┐  │
                    │  │ hub-vm        │  │
                    │  │ 10.0.1.4      │  │
                    │  └───────────────┘  │
                    └──────┬───────┬──────┘
                           │       │
                  peering  │       │  peering
                           │       │
            ┌──────────────▼───┐ ┌─▼────────────────┐
            │ spoke1-vnet      │ │ spoke2-vnet      │
            │ 10.1.0.0/16      │ │ 10.2.0.0/16      │
            │  ┌────────────┐  │ │  ┌────────────┐  │
            │  │ spoke1-vm  │  │ │  │ spoke2-vm  │  │
            │  │ 10.1.1.4   │  │ │  │ 10.2.1.4   │  │
            │  └────────────┘  │ │  └────────────┘  │
            └──────────────────┘ └──────────────────┘
                                  ▲
                                  │
                       NO direct connectivity
                       (must go via hub + NVA, see lab 02)
```

## Prerequisites

- Azure subscription (free tier works)
- Azure CLI installed and authenticated (`az login`)
- Default subscription set (`az account set --subscription <id>`)

## How to deploy

```bash
chmod +x deploy.sh
./deploy.sh
```

Deployment takes ~5 minutes. Most of the time is VM provisioning.

## How to verify

After deployment completes, the script outputs Bastion connection commands for each VM.

**Test 1: Hub can reach spoke1**
```bash
# From hub-vm via Bastion:
ping 10.1.1.4    # spoke1-vm — should succeed
ping 10.2.1.4    # spoke2-vm — should succeed
```

**Test 2: Spoke1 cannot reach spoke2**
```bash
# From spoke1-vm via Bastion:
ping 10.0.1.4    # hub-vm — should succeed (direct peering)
ping 10.2.1.4    # spoke2-vm — should TIMEOUT (no transitive peering)
```

This proves the key AZ-700 concept: **peering is not transitive.** Lab 02 fixes this by routing spoke-to-spoke traffic through Azure Firewall in the hub.

## Cleanup

```bash
chmod +x cleanup.sh
./cleanup.sh
```

Deletes the entire resource group. Confirm via prompt.

## Estimated cost

- 3 × Standard_B1s VMs running for ~1 hour: ~$0.04
- 3 × OS disks (Standard SSD): ~$0.01/hour
- Bastion (Basic SKU): ~$0.19/hour — **biggest cost, tear down when done**

Full lab cycle (deploy → verify → cleanup, ~1 hour): **under $1**.

## What I learned

_(write this after running the lab)_

-

## Common pitfalls

- Address spaces of peered VNets cannot overlap — using 10.0/10.1/10.2 keeps them clean
- Bastion needs its own subnet named exactly `AzureBastionSubnet` with /26 minimum
- Default NSG rules allow VNet-to-VNet traffic — if you add restrictive NSGs, peering connectivity will silently break
