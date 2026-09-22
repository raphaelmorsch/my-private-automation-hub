# nginx_site

Installs Nginx, creates a document root, and publishes a minimal managed index page.

## Requirements

- Ansible Core 2.15 or newer
- Privilege escalation for package, file, and service management

## Role variables

| Variable | Default | Description |
| --- | --- | --- |
| `web_stack_nginx_package` | `nginx` | Nginx package name. |
| `web_stack_nginx_service` | `nginx` | Nginx service name. |
| `web_stack_server_name` | `localhost` | Server name displayed by the managed page. |
| `web_stack_document_root` | `/usr/share/nginx/html` | Web document root. |
| `web_stack_index_title` | `Managed by Ansible` | Title displayed on the index page. |

## Dependencies

None.

## Example playbook

```yaml
---
- name: Publish an Nginx site
  hosts: webservers
  become: true
  roles:
    - role: raphaelmorsch.web_stack.nginx_site
      vars:
        web_stack_server_name: example.internal
        web_stack_index_title: Internal web service
```

## License

MIT
