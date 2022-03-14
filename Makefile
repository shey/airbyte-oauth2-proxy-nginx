.PHONY: venv pip ansible ping build

venv:
	python3.10 -m venv venv

pip:
	python3.10 -m pip install --upgrade pip

ansible:
	python3.10 -m pip install ansible==4.4.0

ping:
	ansible -i inventory/production -m ping production

build:
	ansible-playbook -i inventory/production playbooks/build.yml -vv
