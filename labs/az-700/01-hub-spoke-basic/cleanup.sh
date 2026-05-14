#!/bin/bash
# Lab 01 — Cleanup
# Deletes the entire resource group

RG="rg-az700-lab01-hubspoke"

echo "This will delete resource group $RG and ALL resources within it."
read -p "Continue? (y/N) " -n 1 -r
echo
if [[ ! $REPLY =~ ^[Yy]$ ]]; then
  echo "Cancelled."
  exit 0
fi

echo "→ Deleting resource group (this runs in the background)..."
az group delete --name $RG --yes --no-wait

echo "✓ Cleanup initiated. Check status with:"
echo "  az group show --name $RG"
echo "(will return 'NotFound' once delete completes, usually within 5-10 min)"
