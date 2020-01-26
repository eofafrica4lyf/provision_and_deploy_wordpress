# provision_and_deploy_wordpress
Create a wordpress site, on a kubernetes cluster situated on a k3s distribution on AWS

### Steps
- Provision subnets on AWS using Terraform
  + (In the terraform folder)Run "terraform init"
	+ Then run "aws2 configure"
- Install k3s on the node using Ansible
- Create docker container with php-fpm that installs Wordpress
- Deploy on Kubernetes
- Install helm on the node
- Use heml to setup nginx-ingress
