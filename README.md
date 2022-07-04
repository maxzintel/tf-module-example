# Testing Terraform Methods

Example Module comparing use of tfvars & variables

## Directory Structure

```txt
-method-1-tfvars
  ├─modules/ec2-boilerplate
  |   ├─main.tf
  |   └─variables.tf
  └─prod
      ├─main.tf
      └─terraform.tfvars # Set defaults through the prod env.

# Optional, can ignore.
-method-2-vars
  ├─modules/ec2-boilerplate
  |   ├─main.tf
  |   └─variables.tf
  └─prod
      └─main.tf
```

Note: View method 2 as just a comparison of using exclusively variables.tf and the drawbacks therein.

## Nav

1. [S3 Backend State](https://github.com/s1dequest/tf-module-example/blob/d10c4a787abad928e78ed5843ea013118e3b78bb/)method-1-tfvars/prod/main.tf#L1
2. [tfvars File](https://github.com/s1dequest/tf-module-example/blob/master/method-1-tfvars/prod/terraform.tfvars)
3. [Security Group](https://github.com/s1dequest/tf-module-example/blob/d10c4a787abad928e78ed5843ea013118e3b78bb/method-1-tfvars/modules/ec2-boilerplate/main.tf#L22)
4. [EBS Volume Attachment](https://github.com/s1dequest/tf-module-example/blob/d10c4a787abad928e78ed5843ea013118e3b78bb/method-1-tfvars/modules/ec2-boilerplate/main.tf#L66)
5. [EC2 in New Subnet and AZ](https://github.com/s1dequest/tf-module-example/blob/d10c4a787abad928e78ed5843ea013118e3b78bb/method-1-tfvars/prod/main.tf#L38)
6. [Module](https://github.com/s1dequest/tf-module-example/tree/master/method-1-tfvars/modules/ec2-boilerplate)
