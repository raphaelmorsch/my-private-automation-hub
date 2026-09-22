# raphaelmorsch.cloud_ops

Cloud operations helpers for provisioning data and bootstrap files.

## Roles

### `cloud_init`

Renders a simple cloud-init user-data file locally for use with cloud provisioning workflows.

```yaml
---
- name: Render cloud-init data
  hosts: localhost
  gather_facts: false
  roles:
    - role: raphaelmorsch.cloud_ops.cloud_init
      cloud_ops_cloud_init_output: ./user-data.yml
```
