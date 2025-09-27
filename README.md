# proxmox-config

[![Ansible Molecule Test Matrix](https://github.com/nfaction/proxmox-config/actions/workflows/molecule.yml/badge.svg)](https://github.com/nfaction/proxmox-config/actions/workflows/molecule.yml)

Role to bootstrap Proxmox VE Hypervisors

## Usage

```shell
# This playbook contains all the enabled flags
ansible-playbook -i <pve-host-ip>, -u root roles/proxmox-config/proxmox-config.yml

# Validate
ansible-playbook -i <pve-host-ip>, -u root roles/proxmox-config/proxmox-validation.yml 
```

## References

* https://pve.proxmox.com/pve-docs/pve-admin-guide.html#sysadmin_no_subscription_repo
