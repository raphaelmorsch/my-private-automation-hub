# podman_host

Prepares an Enterprise Linux host for container workloads with Podman, Buildah, and Skopeo.

## Requirements

- Ansible Core 2.15 or newer
- Privilege escalation for package and directory management

## Role variables

| Variable | Default | Description |
| --- | --- | --- |
| `container_tools_podman_packages` | `[podman, buildah, skopeo]` | Container tools to install. |

## Dependencies

None.

## Example playbook

```yaml
---
- name: Prepare container hosts
  hosts: container_hosts
  become: true
  roles:
    - role: raphaelmorsch.container_tools.podman_host
```

## License

MIT
