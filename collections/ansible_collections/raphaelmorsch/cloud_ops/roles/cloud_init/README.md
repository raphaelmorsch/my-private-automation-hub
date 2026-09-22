# cloud_init

Renders a cloud-init user-data file on the Ansible control node.

## Requirements

- Ansible Core 2.15 or newer
- Write access to the output location on the control node

## Role variables

| Variable | Default | Description |
| --- | --- | --- |
| `cloud_ops_cloud_init_output` | `./user-data.yml` | Destination path on the control node. |
| `cloud_ops_cloud_init_user` | `cloud-user` | User created by cloud-init. |
| `cloud_ops_cloud_init_packages` | `[python3, firewalld]` | Packages installed by cloud-init. |
| `cloud_ops_cloud_init_authorized_keys` | `[]` | SSH public keys assigned to the user. |

## Dependencies

None.

## Example playbook

```yaml
---
- name: Generate cloud-init data
  hosts: localhost
  gather_facts: false
  roles:
    - role: raphaelmorsch.cloud_ops.cloud_init
      vars:
        cloud_ops_cloud_init_output: ./build/user-data.yml
        cloud_ops_cloud_init_authorized_keys:
          - ssh-ed25519 AAAA_REPLACE_WITH_A_PUBLIC_KEY
```

## License

MIT
