# Lab 4 — Ansible (Codespaces + CI)

## Run locally (Codespaces terminal)
```bash
ansible --version

ansible-playbook -i lab4-ansible/inventory lab4-ansible/playbooks/hello.yml
- trigger Ansible CI run
# optional dry-run:
ansible-playbook -i lab4-ansible/inventory lab4-ansible/playbooks/nginx.yml --check
```

## Files
- `inventory` — uses localhost (local connection)
- `ansible.cfg` — points to inventory
- `playbooks/hello.yml` — prints a message
- `playbooks/nginx.yml` — idempotent apt demo
- `roles/common/tasks/main.yml` — example role

## CI
`.github/workflows/ansible.yml` installs Ansible and runs `hello.yml` and a **syntax check**.

## Evidence to capture
- `ansible --version`
- `PLAY RECAP`
- Inventory + cfg open in editor
