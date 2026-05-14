# 05 — Management & Monitoring

## Cost management

- **Pricing Calculator** — estimate costs before deploying
- **TCO Calculator** — compare on-prem cost vs Azure
- **Cost Management + Billing** — track actual spend, budgets, alerts
- **Azure Advisor** — recommendations including cost optimization

## Factors that affect cost

- Resource type and size
- Region (varies)
- Bandwidth (ingress free, egress costs)
- Reserved Instances / Savings Plans (commit 1 or 3 years for big discount)
- Spot pricing (for interruptible workloads)
- Azure Hybrid Benefit (use existing Windows Server / SQL Server licenses)

## SLAs

- Composite SLA = multiply individual SLAs together (services in series degrade availability)
- AZs increase SLA for IaaS workloads
- Free tier services usually have no SLA

## Service lifecycle

- Public preview → General Availability (GA) → deprecated
- Preview features may have limited SLA / support

## Monitoring tools

- **Azure Monitor** — umbrella service
  - **Metrics** — numeric time-series data
  - **Logs** — text-based event data, queried with KQL in Log Analytics
  - **Alerts** — trigger on metrics/logs → Action Groups → notifications
  - **Application Insights** — APM
- **Service Health** — outages and planned maintenance
- **Azure Status** — global status page (status.azure.com)

## My notes / questions

_(fill in as you study)_
