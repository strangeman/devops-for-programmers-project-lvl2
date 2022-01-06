install: 
	ansible-galaxy install -r requirements.yml

deploy:
	ansible-playbook -i inventory/inventory.ini --vault-password-file .vault-password playbook.yml

vault-encrypt:
	ansible-vault encrypt  group_vars/webservers/vault.yml --vault-password-file .vault-password

vault-decrypt:
	ansible-vault decrypt group_vars/webservers/vault.yml --vault-password-file .vault-password

touch-vault-password-file:
	touch .vault-password