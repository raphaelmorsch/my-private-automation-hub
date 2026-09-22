# controller_project

Creates or updates a source control project in Ansible Automation Platform Controller.

## Requirements

- Ansible Core 2.15 or newer
- `awx.awx` collection 24.0.0 or newer
- Controller authentication configured for the `awx.awx.project` module

## Role variables

| Variable | Default | Description |
| --- | --- | --- |
| `aap_platform_project_name` | `My Private Automation Hub Content` | Controller project name. |
| `aap_platform_project_description` | `Collections and playbooks managed by Ansible.` | Controller project description. |
| `aap_platform_project_organization` | `Default` | Organization that owns the project. |
| `aap_platform_project_scm_type` | `git` | Source control type. |
| `aap_platform_project_scm_url` | Repository URL | Source control repository URL. |
| `aap_platform_project_scm_branch` | `main` | Source control branch or revision. |
| `aap_platform_project_update_on_launch` | `true` | Update the project when the module runs. |
| `aap_platform_project_state` | `present` | Desired project state. |

## Dependencies

The collection declares `awx.awx >= 24.0.0` as a dependency.

## Example playbook

```yaml
---
- name: Configure an AAP Controller project
  hosts: localhost
  gather_facts: false
  roles:
    - role: raphaelmorsch.aap_platform.controller_project
      vars:
        aap_platform_project_name: Platform automation
        aap_platform_project_scm_url: https://github.com/example/platform-automation.git
```

## License

MIT
