# raphaelmorsch.aap_platform

Red Hat Ansible Automation Platform Controller helpers.

## Roles

### `controller_project`

Creates or updates an AAP Controller project using the `awx.awx` collection.

```yaml
---
- name: Configure Controller project
  hosts: localhost
  gather_facts: false
  roles:
    - role: raphaelmorsch.aap_platform.controller_project
      aap_platform_project_name: My Private Automation Hub Content
      aap_platform_project_scm_url: https://github.com/raphaelmorsch/my-private-automation-hub.git
```

The role expects standard Controller authentication variables supported by `awx.awx`, such as `controller_host`, `controller_username`, and `controller_password` or `controller_oauthtoken`.
