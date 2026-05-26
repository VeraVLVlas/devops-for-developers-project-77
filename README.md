### Hexlet tests and linter status:
[![Actions Status](https://github.com/VeraVLVlas/devops-for-developers-project-77/actions/workflows/hexlet-check.yml/badge.svg)](https://github.com/VeraVLVlas/devops-for-developers-project-77/actions)


# DevOps For Developers Project
Local Infrastructure as Code project using Terraform, Ansible, Docker, and Oracle VirtualBox.

## Infrastructure
The project creates:

- 2 web servers
- 1 nginx load balancer
- Dockerized application deployment
- Local VirtualBox infrastructure managed by Terraform

## Technologies
- Terraform
- Ansible
- Docker
- Nginx
- Oracle VirtualBox

## Project Structure
```text
.
├── terraform/
├── ansible/
├── Makefile
└── README.md
```

## Terraform
Initialize Terraform:
```bash
make init
```

Check execution plan:
```bash
make plan
```

Create infrastructure:
```bash
make apply
```

Destroy infrastructure:
```bash
make destroy
```

## Ansible
Install Ansible roles and collections:
```bash
make ansible-install
```

Prepare servers:
```bash
make setup
```

Deploy application:
```bash
make deploy
```

Run full provisioning:
```bash
make provision
```

## Application
The application is deployed as a Docker container.
Docker image used: traefik/whoami
