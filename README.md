# New Project with Vault-backed Azure dynamic credentials

This module deploys resources to support VCS-driven Azure Infrastructure Automation using dynamic credentials.

## Azure

| Resource Type | Resource | Description |
|---------------|----------|-------------|
| Azure Service Prinicipal | project-<project_name>-prod | Azure Service Prinicipal for access to the Azure Production environment |
| Azure Service Prinicipal | project-<project_name>-stage | Azure Service Prinicipal for access to the Azure Staging environment |
| Azure Service Prinicipal | project-<project_name>-dev | Azure Service Prinicipal for access to the Azure Development environment |

## GitHub

| Resource Type | Resource | Description |
|---------------|----------|-------------|
| GitHub Repo | project-<project_name> | GitHub private repository |
| GitHub Repo Branch | project-<project_name>/main | VCS branch for tracking code intended for the Production environment |
| GitHub Repo Branch | project-<project_name>/stage | VCS branch for tracking code intended for the Staging environment |
| GitHub Repo Branch | project-<project_name>/dev | VCS branch for tracking code intended for the Devlopment environment |

## HCP Terraform

| Resource Type | Resource | Description |
|---------------|----------|-------------|
| Terrform Workspace | project-<project_name>-prod | Terraform workspace tracking infrastructure automation for the Production environment. Configured with VCS-connectivity to the main branch  |
| Terrform Workspace | project-<project_name>-stage | Terraform workspace tracking infrastructure automation for the Staging environment. Configured with VCS-connectivity to the stage branch  |
| Terrform Workspace | project-<project_name>-dev | Terraform workspace tracking infrastructure automation for the Development environment. Configured with VCS-connectivity to the dev branch  |

## Vault

| Resource Type | Resource | Description |
|---------------|----------|-------------|
| JWT auth role | project-<project_name>-prod | Authorization role for Terrform to authenticate and acccess Production dynamic credentials |
| JWT auth role | project-<project_name>-stage | Authorization role for Terrform to authenticate and acccess Staging dynamic credentials |
| JWT auth role | project-<project_name>-dev| Authorization role for Terrform to authenticate and acccess Development dynamic credentials |
| Policy | project-<project_name>-prod | Vault policy to authorize JWT auth method to request credentials from the Azure secrets engine for Production |
| Policy | project-<project_name>-stage | Vault policy to authorize JWT auth method to request credentials from the Azure secrets engine for Staging |
| Policy | project-<project_name>-dev | Vault policy to authorize JWT auth method to request credentials from the Azure secrets engine for Development |
| Azure secrets role | project-<project_name>-prod | Azure secrets engine role for Terrform to request Production dynamic credentials |
| Azure secrets role | project-<project_name>-stage | Azure secrets engine role for Terrform to request Staging dynamic credentials |
| Azure secrets role | project-<project_name>-dev | Azure secrets engine role for Terrform to request Development dynamic credentials |
