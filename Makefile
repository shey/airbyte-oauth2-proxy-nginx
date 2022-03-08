.PHONY: venv webserver ping

venv:
	python3.10 -m venv venv

webserver:
	ansible-playbook \
		-i inventory/production \
		--diff playbooks/build-webserver.yml -v

ping:
	ansible -i inventory/production -m ping production
