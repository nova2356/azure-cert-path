# AZ-700 Labs

The portfolio-worthy work. Networking is hands-on by nature; reading about UDRs without building them is a waste of time.

## Planned labs

### Core networking
- [ ] `01-hub-spoke-basic/` — 1 hub, 2 spokes, peered, verify transitivity broken
- [ ] `02-hub-spoke-with-nva/` — same topology, force traffic through Azure Firewall in hub
- [ ] `03-udr-forced-tunneling/` — UDR pointing 0.0.0.0/0 to firewall, verify with effective routes
- [ ] `04-route-server-bgp/` — Route Server with simulated NVA (Quagga/FRR on Ubuntu VM)

### Connectivity
- [ ] `05-vpn-s2s-simulated/` — two VNets connected via VPN Gateway (simulates branch-to-Azure)
- [ ] `06-vpn-p2s-cert-auth/` — Point-to-site with cert auth, validate from local OpenVPN client
- [ ] `07-vwan-basic/` — Virtual WAN with two hubs and a connected branch
- [ ] `08-expressroute-walkthrough/` — documentation-only (ER too expensive to deploy)

### Application delivery
- [ ] `09-azure-lb-internal/` — internal LB with 2 backend VMs running nginx
- [ ] `10-appgw-path-routing/` — App Gateway with path-based routing + WAF policy
- [ ] `11-front-door-multi-region/` — Front Door fronting two regional backends
- [ ] `12-traffic-manager-priority/` — Traffic Manager priority routing for failover

### Private access
- [ ] `13-private-endpoint-storage/` — storage account with Private Endpoint, DNS integration
- [ ] `14-private-link-service/` — publish your own service via Private Link
- [ ] `15-service-endpoint-vs-pe/` — side-by-side comparison demonstrating the difference

### Network security
- [ ] `16-azure-firewall-policy/` — Firewall with policies, rule collection groups, DNAT
- [ ] `17-firewall-premium-tls/` — Premium SKU with TLS inspection (if budget allows)
- [ ] `18-ddos-network-protection/` — enable DDoS Network Protection on a VNet
- [ ] `19-nsg-flow-logs-traffic-analytics/` — flow logs + Traffic Analytics in Log Analytics

### Monitoring
- [ ] `20-network-watcher-tour/` — connection monitor, next hop, IP flow verify across topology

## Recommended order

Don't go top-to-bottom. Build the foundation first:
1. Lab 01 (basic hub-spoke) — anchor topology you'll reuse
2. Lab 02 (with NVA) — add Firewall to the hub
3. Lab 16 (Firewall policy) — configure the firewall properly
4. Lab 13 (Private Endpoint) — add private access pattern
5. Then branch into connectivity (VPN/VWAN) and app delivery in any order

This means most subsequent labs **extend** the hub-spoke environment rather than tearing down and rebuilding — saves time and money.
