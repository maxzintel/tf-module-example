# Here the CI/CD running terraform plan and apply steps would specify this tfvars file. 
# ex: terraform plan -var-file=prod.tfvars
env_name = "prod"
account_number = "789"
instance_type = "t2.medium"
key_name = "ipfs-keypair-name"