resource "aws_instance" "ipfs" {
  ami                         = "ami-abcd1234"
  associate_public_ip_address = false
  instance_type               = var.instance_type
  key_name                    = var.key_name
  availability_zone           = var.az
  vpc_security_group_ids      = [aws_security_group.sg-ipfs.id]
  subnet_id                   = var.subnet

  tags = {
    Group = "IPFS"
    Name  = var.instance_name
  }
}

# To associate the below terraform resource with the existing security group, we need to...
# 1. terraform init
# 2. terraform import aws_security_group.sg-ipfs ${arn of resource in aws}
# 3a. terraform plan => Verify the plan doesn't show any changes to the security group rules.
# 3b. If the plan does show changes, alter the config such that the resource aligns with the existing SG.
# 4. terraform apply 
resource "aws_security_group" "sg_ipfs" {
  name = "sg-ipfs"
  description = "Security Group handling traffic for IPFS instances."

  ingress {
    from_port = 4001
    to_port = 4001
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  ingress {
    from_port = 8080
    to_port = 8080
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  ingress {
    from_port = 22
    to_port = 22
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  # This is a default egress rule that terraform removes. Add it back here assuming that since the original SG was created in AWS it would have this. If the plan shows a diff here that we would be adding this rule, remove this block before applying.
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
}

resource "aws_ebs_volume" "ipfs" {
  availability_zone = "eu-west-1a"
  size              = var.storage_size
}

# Attach volumes via aws_volume_attachment to preserve storage when the instances are restarted/destroyed
resource "aws_volume_attachment" "ipfs" {
  device_name = "/dev/sdh"
  volume_id = aws_ebs_volume.ipfs.id
  instance_id = aws_instance.ipfs.id
}

