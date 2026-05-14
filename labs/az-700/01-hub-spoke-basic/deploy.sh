#!/bin/bash
# Lab 01 — Hub-and-Spoke deployment
# Creates 1 hub + 2 spokes, peered, with one VM in each + Bastion in hub

set -e

# === Configuration ===
RG="rg-az700-lab01-hubspoke"
LOCATION="eastus"
ADMIN_USER="azureuser"
VM_SIZE="Standard_B1s"

# Generate a random suffix to avoid name collisions
SUFFIX=$(echo $RANDOM | md5sum | head -c 4)

# === Auth check ===
echo "→ Checking Azure CLI auth..."
az account show > /dev/null || { echo "Run 'az login' first"; exit 1; }

# === Create resource group ===
echo "→ Creating resource group $RG..."
az group create --name $RG --location $LOCATION --output none

# === Create VNets ===
echo "→ Creating hub VNet (10.0.0.0/16)..."
az network vnet create \
  --resource-group $RG \
  --name hub-vnet \
  --address-prefix 10.0.0.0/16 \
  --subnet-name vm-subnet \
  --subnet-prefix 10.0.1.0/24 \
  --output none

echo "→ Adding AzureBastionSubnet to hub..."
az network vnet subnet create \
  --resource-group $RG \
  --vnet-name hub-vnet \
  --name AzureBastionSubnet \
  --address-prefix 10.0.255.0/26 \
  --output none

echo "→ Creating spoke1 VNet (10.1.0.0/16)..."
az network vnet create \
  --resource-group $RG \
  --name spoke1-vnet \
  --address-prefix 10.1.0.0/16 \
  --subnet-name vm-subnet \
  --subnet-prefix 10.1.1.0/24 \
  --output none

echo "→ Creating spoke2 VNet (10.2.0.0/16)..."
az network vnet create \
  --resource-group $RG \
  --name spoke2-vnet \
  --address-prefix 10.2.0.0/16 \
  --subnet-name vm-subnet \
  --subnet-prefix 10.2.1.0/24 \
  --output none

# === Peering ===
echo "→ Peering hub ↔ spoke1..."
az network vnet peering create \
  --resource-group $RG \
  --name hub-to-spoke1 \
  --vnet-name hub-vnet \
  --remote-vnet spoke1-vnet \
  --allow-vnet-access \
  --output none

az network vnet peering create \
  --resource-group $RG \
  --name spoke1-to-hub \
  --vnet-name spoke1-vnet \
  --remote-vnet hub-vnet \
  --allow-vnet-access \
  --output none

echo "→ Peering hub ↔ spoke2..."
az network vnet peering create \
  --resource-group $RG \
  --name hub-to-spoke2 \
  --vnet-name hub-vnet \
  --remote-vnet spoke2-vnet \
  --allow-vnet-access \
  --output none

az network vnet peering create \
  --resource-group $RG \
  --name spoke2-to-hub \
  --vnet-name spoke2-vnet \
  --remote-vnet hub-vnet \
  --allow-vnet-access \
  --output none

# Note: NO peering between spoke1 ↔ spoke2 (that's the point of this lab)

# === VMs ===
echo "→ Creating hub-vm..."
az vm create \
  --resource-group $RG \
  --name hub-vm \
  --image Ubuntu2204 \
  --size $VM_SIZE \
  --vnet-name hub-vnet \
  --subnet vm-subnet \
  --public-ip-address "" \
  --admin-username $ADMIN_USER \
  --generate-ssh-keys \
  --output none

echo "→ Creating spoke1-vm..."
az vm create \
  --resource-group $RG \
  --name spoke1-vm \
  --image Ubuntu2204 \
  --size $VM_SIZE \
  --vnet-name spoke1-vnet \
  --subnet vm-subnet \
  --public-ip-address "" \
  --admin-username $ADMIN_USER \
  --ssh-key-values ~/.ssh/id_rsa.pub \
  --output none

echo "→ Creating spoke2-vm..."
az vm create \
  --resource-group $RG \
  --name spoke2-vm \
  --image Ubuntu2204 \
  --size $VM_SIZE \
  --vnet-name spoke2-vnet \
  --subnet vm-subnet \
  --public-ip-address "" \
  --admin-username $ADMIN_USER \
  --ssh-key-values ~/.ssh/id_rsa.pub \
  --output none

# === Bastion (so we can access VMs without public IPs) ===
echo "→ Creating Bastion public IP..."
az network public-ip create \
  --resource-group $RG \
  --name bastion-pip-${SUFFIX} \
  --sku Standard \
  --output none

echo "→ Creating Bastion host (this takes ~3 minutes)..."
az network bastion create \
  --resource-group $RG \
  --name lab-bastion \
  --public-ip-address bastion-pip-${SUFFIX} \
  --vnet-name hub-vnet \
  --location $LOCATION \
  --output none

# === Done ===
echo ""
echo "✓ Deployment complete."
echo ""
echo "Connect to VMs via Bastion in the Azure portal:"
echo "  Portal → Resource Group $RG → VM → Connect → Bastion"
echo ""
echo "Once inside hub-vm, run:"
echo "  ping 10.1.1.4    # spoke1-vm — should succeed"
echo "  ping 10.2.1.4    # spoke2-vm — should succeed"
echo ""
echo "Once inside spoke1-vm, run:"
echo "  ping 10.0.1.4    # hub-vm — should succeed"
echo "  ping 10.2.1.4    # spoke2-vm — should TIMEOUT (no transitive peering)"
echo ""
echo "When done, run ./cleanup.sh to delete everything."
