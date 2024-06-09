The prefix `-/+` means that Terraform will destroy and recreate the resource, rather than updating it in-place.

Terraform can update some attributes in-place (indicated with the `~` prefix), but changing the AMI for an EC2 instance requires recreating it. 

### Variables

Run apply with variable name. Variables defined via CLI are not saved, there are other methods to ensure this.

`terraform apply -var "instance_name=YetAnotherName"`


## Saving to Hashicorp Cloud Platform
- Add the cloud block
- use `terraform login` to login in the CLI
- run `terraform init` again to re-initialize and save state file to HCP
- in your HCP workspace online, add variables and access keys under workspace variables 