- Initialize the project, which downloads a plugin that allows Terraform to interact with Docker.

terraform init

- Provision the NGINX server container with apply
terraform apply

- Run docker ps to view the NGINX container running in Docker via Terraform.
docker ps

- stop the container and destroy the resources
terraform destroy