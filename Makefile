.PHONY: venv ping

venv:
	python3.10 -m venv venv

pip:
	pip install --upgrade pip

ansible:
	pip install ansible==4.4.0

ping:
	ansible -i inventory/production -m ping production
