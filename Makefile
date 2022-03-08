.PHONY: venv ping ansible ping build

venv:
	python3.10 -m venv venv

pip:
	pip install --upgrade pip

ansible:
	pip install ansible==4.4.0

ping:
	ansible -i inventory/production -m ping production

build:
	ansible-playbook -i inventory/production playbooks/build.yml -vv
