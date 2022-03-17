# airbyte-oauth2-proxy-ansible demo
Install and configure nginx, certbot, oauth2-proxy, docker and (airbyte via docker-compose).

#### pre-requisites
1. DNS entry for `server_name`
2. Ansible Vault expects an encryption key defined in `.password_file`

### Variables
The following variables must be defined before executing the playbook:
1. `admin_key`
2. `github_client_id`
3. `github_client_secret`
4. `oauth2_proxy_secret_cookie`
5. `admin_email`
6. `server_name`
7. `ansible_ssh_host` in `inventory/production`.

### Running the playbook
Activate the python virtualenv `source venv/bin/activate` and run `make build`
