### Hexlet tests and linter status

[![Actions Status](https://github.com/strangeman/devops-for-programmers-project-lvl2/workflows/hexlet-check/badge.svg)](https://github.com/strangeman/devops-for-programmers-project-lvl2/actions)

# DevOps for programmers project: lvl2

## What is it?

This is playbook for deploying simple Redmine app on infrastructure, containing two DigitalOcean droplets, DO LoadBalancer and managed database.

## How to build and how to use

All commands have shortcuts in Makefile:

- `make install` - install roles and collections from `requirements.yml`
- `make deploy` - install application to servers from `inventory/inventory.ini`
- `make vault-decrypt` - decrypt `group_vars/webservers/vault.yml` for editing
- `make vault-encrypt` - encrypt `group_vars/webservers/vault.yml` before commit
- `make touch-vault-password-file` - touch `.vault-password` file

## Configuration

All settings configured via Ansible variables in `group_vars` folder.

There are two sensitive varibles, encrypted via Ansible Vault:

- `redmine_vault_db_password` - password for managed database
- `datadog_api_key` - API key for DataDog monitoring solution

## Application

App available here: <http://hexlet-lvl2.strangeman.info/>