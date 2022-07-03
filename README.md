# Testing Terraform Methods - Variables vs. TFVARS

## Directory Structure

```txt
-method-1-tfvars
  ├─modules/ec2-boilerplate
  |   ├─main.tf
  |   └─variables.tf
  ├─dev
  |   ├─main.tf
  |   └─dev.tfvars
  └─prod
      ├─main.tf
      └─prod.tfvars

# Optional, can ignore.
-method-2-vars
  ├─modules/ec2-boilerplate
  |   ├─main.tf
  |   └─variables.tf
  ├─dev
  |   └─main.tf
  └─prod
      └─main.tf
```

Note: View method 2 as just a comparison of using exclusively variables.tf and the drawbacks therein.
