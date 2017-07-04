test:
	@printf '[defaults]\nroles_path=../' > ansible.cfg
	@ansible-playbook tests/test.yml -i tests/inventory --syntax-check
	@rm -f ansible.cfg

install:
	@pip install ansible
	@ansible --version

.PHONY: test install
