# Cisco FMC/FTD Ansible Automation (Refactored)

This project has been refactored into a modern, robust Ansible workflow suitable for production and use with Ansible Automation Platform (AAP).

## Key Improvements

- **Consolidated Roles:** All use cases are now managed by three primary roles: `fmc_config`, `fmc_reporting`, and `fmc_troubleshooting`.
- **Single Entry Point:** All automation is run through `main_playbook.yml`.
- **Automated Rollbacks:** Configuration tasks that fail will be automatically rolled back.
- **Clear Workflow:** Each role follows a `precheck -> tasks -> postcheck` workflow.

## How to Run

All executions now go through `main_playbook.yml`. You must provide the desired `use_case` as an extra variable. This is designed to be used with an AAP survey.

**Example: Create a Firewall Rule**
```bash
ansible-playbook main_playbook.yml -e "use_case=rule_create policy_name=MyPolicy rule_name=NewWebRule ..."
```

**Example: Run a Report**
```bash
ansible-playbook main_playbook.yml -e "use_case=report_disabled_rules policy_name=MyPolicy"
```

## Structure Overview

- **main_playbook.yml:** The single entry point for all tasks.
- **roles/:** Contains the new consolidated roles.
- **roles_backup/:** Your original roles are safely backed up here.
