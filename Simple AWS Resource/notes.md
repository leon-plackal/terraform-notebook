The prefix `-/+` means that Terraform will destroy and recreate the resource, rather than updating it in-place.

Terraform can update some attributes in-place (indicated with the `~` prefix), but changing the AMI for an EC2 instance requires recreating it. 

### Variables

Run apply with variable name. Variables defined via CLI are not saved, there are other methods to ensure this.

`terraform apply -var "instance_name=YetAnotherName"`