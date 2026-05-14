# 01 — Core Networking Infrastructure

> 25–30% of the exam. The largest weighted domain.

## IP addressing & VNet design

### Address space rules
- VNet uses CIDR (e.g., 10.0.0.0/16)
- Can have multiple address spaces per VNet
- Address spaces of peered VNets **cannot overlap**
- Must be RFC 1918 private space (or BYOIP)

### Reserved IPs per subnet
Azure reserves 5 IPs per subnet:
- `.0` — network address
- `.1` — default gateway
- `.2`, `.3` — reserved for Azure DNS
- `.255` — broadcast (last in subnet)

So a /29 (8 IPs) only gives you 3 usable. **/28 minimum for practical use.**

### Subnet sizing for special services

Specific services require specific subnet sizes. **These show up on the exam:**

| Service | Subnet name | Minimum size |
|---------|-------------|--------------|
| Azure Bastion | `AzureBastionSubnet` | /26 |
| VPN/ER Gateway | `GatewaySubnet` | /27 recommended, /29 minimum |
| Azure Firewall | `AzureFirewallSubnet` | /26 |
| Azure Firewall Mgmt (forced tunneling) | `AzureFirewallManagementSubnet` | /26 |
| Route Server | `RouteServerSubnet` | /27 minimum |

The names are exact and case-sensitive.

## VNet peering

### Two types
- **Regional peering** — same Azure region
- **Global peering** — different regions

### Properties you can set
- **Allow virtual network access** — usually yes
- **Allow forwarded traffic** — needed if traffic comes via NVA in peer
- **Allow gateway transit** — peer can use this VNet's gateway
- **Use remote gateways** — this VNet uses peer's gateway

### ⚠ Critical: peering is **NOT transitive**
If VNet A peers with B, and B peers with C, **A cannot reach C through B** by default. To make this work you need:
- UDRs in A pointing toward an NVA in B (Azure Firewall, NVA, or Route Server with BGP)
- "Allow forwarded traffic" enabled on the peerings

This is the foundation of **hub-and-spoke**. Spokes peer to hub only, hub contains shared services, traffic between spokes goes through the hub (typically via Azure Firewall).

## Routing — system routes, UDRs, BGP

### System routes (automatic)
Azure populates default routes for:
- VNet address space (local)
- 0.0.0.0/0 → Internet
- Peered VNets
- VPN/ExpressRoute (when gateway present)

### User-Defined Routes (UDRs)
- Override system routes
- Applied to a **subnet** (via route table association)
- Next hop types: VirtualAppliance, VirtualNetworkGateway, VirtualNetwork, Internet, None

### Effective routes
Shown per-NIC in the portal. **Crucial for troubleshooting.** Use Network Watcher → Next Hop or check effective routes on a NIC.

### Route precedence (when conflict)
1. UDR (user-defined) — highest
2. BGP routes (learned via VPN/ER)
3. System routes — lowest

**Longest prefix match wins** within each category. So a /32 UDR beats a /24 BGP route.

## Azure Route Server

- Enables BGP between Azure platform and NVAs in your VNet
- Eliminates manually maintaining UDRs when using NVAs
- Lives in dedicated `RouteServerSubnet`
- Two BGP peer IPs (HA)
- ASN 65515 (fixed)
- Use cases: SD-WAN appliances, dual-NVA HA, multi-region with NVA

## NAT Gateway

- Provides **deterministic outbound** SNAT
- Attaches to a subnet
- Scales SNAT ports — solves SNAT port exhaustion problems Load Balancer has
- Replaces "default outbound access" which is being deprecated (Sept 2025)
- Cannot route inbound — outbound only

## My notes / questions

_(fill in as you study)_
