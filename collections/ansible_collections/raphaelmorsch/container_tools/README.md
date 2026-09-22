# raphaelmorsch.container_tools

Container host automation focused on Podman tooling.

## Roles

### `podman_host`

Installs Podman and optional supporting container tools.

```yaml
---
- name: Prepare container hosts
  hosts: containers
  become: true
  roles:
    - role: raphaelmorsch.container_tools.podman_host
```
