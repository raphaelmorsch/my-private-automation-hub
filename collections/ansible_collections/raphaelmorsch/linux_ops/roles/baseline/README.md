# baseline

Installs a standard set of packages and optionally enables services on Enterprise Linux hosts.

## Requirements

- Ansible Core 2.15 or newer
- Privilege escalation for package and service management

## Role variables

| Variable | Default | Description |
| --- | --- | --- |
| `linux_ops_baseline_packages` | `[vim, curl, tar]` | Packages to install. |
| `linux_ops_baseline_services` | `[]` | Services to enable and start. |

## Dependencies

None.

## Example playbook

```yaml
---
- name: Apply the Linux baseline
  hosts: all
  become: true
  roles:
    - role: raphaelmorsch.linux_ops.baseline
      vars:
        linux_ops_baseline_services:
          - firewalld
```

## License

MIT
