To do terraform apply like workspace wise have to pass

terraform apply -var-file=dev.tfvars

terraform workspace list-------show workspaces
terraform workspace show------shows witch workspace you are in currently
terraform workspace new-----to create workspace
terraform workspace select----to switch between workspaces
terraform workspace delete dev--------dev workspace will be deleted


terraform preferance to consider the variables

environment level----------------> prod.tfvars
terraform level-------------------> terraform.tfvars
default variables-----------------> from variable.tf file or else if we din't define in variables.tf then through prompt we have to pass the value

terraform.workspace is the default builtin variable provided by the terraform so if your in dev workspace the terraform.workspace value should be dev
