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

-method-2-vars
  ├─modules/ec2-boilerplate
  |   ├─main.tf
  |   └─variables.tf
  ├─dev
  |   └─main.tf
  └─prod
      └─main.tf
```

Note: I just did examples of both methods because I have historically only used method 2 and not taken advantage of tfvars.
