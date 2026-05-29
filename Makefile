init:
	cd terraform && terraform init

plan:
	cd terraform && terraform plan

apply:
	cd terraform && terraform apply

destroy:
	cd terraform && terraform destroy

fmt:
	cd terraform && terraform fmt

validate:
	cd terraform && terraform validate

ansible-install:
	ansible-galaxy install -r ansible/requirements.yml

setup:
	ansible-playbook -i ansible/inventory.ini ansible/playbook.yml --tags setup --ask-pass

setup-balancer:
	

deploy:
	ansible-playbook -i ansible/inventory.ini ansible/playbook.yml --tags deploy --ask-pass

provision:
	ansible-playbook -i ansible/inventory.ini ansible/playbook.yml

monitoring:
	ansible-playbook -i ansible/inventory.ini ansible/playbook.yml --tags monitoring --ask-pass --ask-vault-pass
