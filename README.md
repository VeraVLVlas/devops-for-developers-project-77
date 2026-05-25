### Hexlet tests and linter status:
[![Actions Status](https://github.com/VeraVLVlas/devops-for-developers-project-77/actions/workflows/hexlet-check.yml/badge.svg)](https://github.com/VeraVLVlas/devops-for-developers-project-77/actions)

# Infrastructure As Code Project

This project uses Terraform to create local infrastructure in Oracle VirtualBox.

## Infrastructure

- 2 virtual machines as web servers
- 1 virtual machine as a load balancer
- HTTPS load balancer is planned to be configured with nginx
- No database is used because the selected application is stateless

## Commands

```bash
make init
make plan
make apply
make destroy
```
