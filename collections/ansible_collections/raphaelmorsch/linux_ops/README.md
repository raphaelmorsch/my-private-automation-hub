# raphaelmorsch.linux_ops

Linux operations content for common host baseline tasks.

## Roles

### `baseline`

Installs useful packages and enables common services.

```yaml
---
- name: Apply Linux baseline
  hosts: linux
  become: true
  roles:
    - role: raphaelmorsch.linux_ops.baseline
```

## Variables

| Variable | Default | Description |
| --- | --- | --- |
| `linux_ops_baseline_packages` | `["vim", "curl", "tar"]` | Packages to install. |
| `linux_ops_baseline_services` | `[]` | Services to enable and start. |
