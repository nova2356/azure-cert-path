# AZ-104 Labs

Hands-on work aligned to the AZ-104 skill domains. Each lab maps to material covered in the corresponding `notes/az-104/` file.

## Planned labs

### Identity & Governance
- [ ] `01-rbac-custom-role/` — create a custom RBAC role and assign at RG scope
- [ ] `02-azure-policy-deny-region/` — Policy that denies resource creation outside East US
- [ ] `03-management-group-hierarchy/` — set up 3-level MG hierarchy with inherited policies

### Storage
- [ ] `04-storage-firewall-pe/` — storage account locked to VNet via Private Endpoint
- [ ] `05-blob-lifecycle/` — lifecycle policy moving blobs Hot → Cool → Archive
- [ ] `06-azure-files-sync/` — Azure File Sync from on-prem (simulated with a VM)

### Compute
- [ ] `07-vm-basic-deploy/` — Bicep template for a baseline VM with managed disk
- [ ] `08-vmss-with-lb/` — VM Scale Set with autoscale rules and Standard LB
- [ ] `09-container-apps-deploy/` — deploy a containerized app with scale-to-zero

### Networking
- [ ] `10-vnet-peering/` — two VNets peered, verify connectivity, test transitivity
- [ ] `11-nsg-asg/` — NSG rules using ASGs for app-tier segmentation
- [ ] `12-bastion-deploy/` — Bastion in a hub VNet, access spoke VMs

### Monitoring & Backup
- [ ] `13-log-analytics-kql/` — sample KQL queries for VM perf, sign-ins, NSG flow logs
- [ ] `14-vm-backup/` — Recovery Services Vault backup policy + test restore

## Lab template

When you create a new lab, copy `_template/` (TBD) which provides:
- `README.md` skeleton with sections: What, Why, How, Cleanup, Lessons
- `deploy.sh` / `deploy.bicep` starter
- `cleanup.sh` starter
