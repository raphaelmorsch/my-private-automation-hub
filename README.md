# My Private Automation Hub Collections

Repository with Ansible collections intended for import into Red Hat Private Automation Hub.

## Collections

| Collection | Purpose |
| --- | --- |
| `raphaelmorsch.linux_ops` | Linux host baseline tasks. |
| `raphaelmorsch.web_stack` | Simple Nginx site deployment. |
| `raphaelmorsch.container_tools` | Podman host preparation. |
| `raphaelmorsch.cloud_ops` | Cloud-init file rendering helpers. |
| `raphaelmorsch.aap_platform` | AAP Controller project bootstrap tasks. |

## Build

Build all collection artifacts:

```bash
make build
```

Artifacts are written to `dist/` as `.tar.gz` files. Upload those files to Private Automation Hub, or import them with `ansible-galaxy` if your Hub is configured in `ansible.cfg`.

```bash
ansible-galaxy collection publish dist/raphaelmorsch-linux_ops-1.0.0.tar.gz --server private_hub
```

Repeat for each artifact.

## Install From Private Automation Hub

After import, downstream projects can use:

```yaml
---
collections:
  - name: raphaelmorsch.linux_ops
  - name: raphaelmorsch.web_stack
  - name: raphaelmorsch.container_tools
  - name: raphaelmorsch.cloud_ops
  - name: raphaelmorsch.aap_platform
```

