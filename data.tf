data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}

data "aws_vpc" "spoke" {
  filter {
    name   = "tag:Name"
    values = ["spoke_vpc"]
  }
}

data "hcp_packer_iteration" "user" {
  bucket_name = "cadie-user"
  channel     = var.environment
}

data "hcp_packer_image" "user" {
  bucket_name    = "cadie-user"
  cloud_provider = "aws"
  iteration_id   = data.hcp_packer_iteration.user.ulid
  region         = var.aws_region
}

data "aws_subnets" "all" {
  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.spoke.id]
  }
  filter {
    name   = "tag:Type"
    values = ["app"]
  }
}
