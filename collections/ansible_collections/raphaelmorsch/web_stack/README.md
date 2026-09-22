# raphaelmorsch.web_stack

Web automation content for Nginx-backed sites.

## Roles

### `nginx_site`

Installs Nginx, writes a simple server block, deploys an index page, and starts the service.

```yaml
---
- name: Deploy web site
  hosts: web
  become: true
  roles:
    - role: raphaelmorsch.web_stack.nginx_site
      web_stack_server_name: app.example.com
```
