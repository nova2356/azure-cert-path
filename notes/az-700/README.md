# AZ-700 — Azure Network Engineer Associate Notes

> **Exam target:** October 17, 2026
> **Passing score:** 700 / 1000
> **Format:** 40–60 questions, 100 minutes, $165
> **Skills measured:**
> - Design and implement core networking infrastructure (25–30%)
> - Design, implement, and manage connectivity services (20–25%)
> - Design and implement application delivery services (15–20%)
> - Design and implement private access to Azure services (10–15%)
> - Design and implement Azure network security services (15–20%)

## This is the target cert

The AZ-900 and AZ-104 are foundation. **AZ-700 is the job-relevant qualification.** My on-prem networking background (Cisco routing, BGP, VPN tunnels, multi-site topologies) is the strongest possible foundation for this exam, and it shows up directly in:
- VNet design and IP planning
- BGP on VPN Gateway and Route Server
- Hub-and-spoke routing with UDRs
- ExpressRoute connectivity patterns
- Hybrid DNS resolution

## Notes in this folder

| File | Domain |
|------|--------|
| `01-core-networking.md` | VNets, subnets, IP planning, peering, routing |
| `02-connectivity.md` | VPN Gateway, ExpressRoute, Virtual WAN |
| `03-app-delivery.md` | Load Balancer, Application Gateway, Front Door, Traffic Manager |
| `04-private-access.md` | Private Endpoints, Private Link, Service Endpoints |
| `05-network-security.md` | NSGs, Azure Firewall, DDoS Protection, WAF |
| `06-monitoring-troubleshooting.md` | Network Watcher, NSG flow logs, Connection Monitor |
| `07-exam-prep.md` | Practice scores, weak areas, final review |

## Mental model: Azure networking ≈ enterprise on-prem networking

| Concept I already know | Where it shows up in Azure |
|------------------------|----------------------------|
| VLAN segmentation | VNet + subnet design |
| Inter-VLAN routing | VNet peering + UDR |
| Site-to-site IPsec VPN | VPN Gateway (S2S) |
| Hub-and-spoke WAN | Virtual WAN / hub-spoke peering |
| BGP for dynamic routing | VPN Gateway BGP, Azure Route Server |
| MPLS / dedicated circuit | ExpressRoute |
| ACL on switch/router | NSG rules |
| Stateful firewall | Azure Firewall |
| Load balancer in DMZ | Azure Load Balancer (L4) |
| Reverse proxy / WAF | Application Gateway (L7) |
| Internal DNS server | Azure Private DNS Zone |

This list is the cheat code. Whenever you encounter a new Azure networking service, your first question is "what's this the cloud version of?" — there's almost always an answer.

## Study log

| Date | Topic | Hours | Notes |
|------|-------|-------|-------|
| | | | |
