module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = ">= 3.0"

  name = "test-instance"
  # ami                         = data.aws_ami.ubuntu.id
  ami                         = data.hcp_packer_image.user.cloud_image_id
  associate_public_ip_address = false
  subnet_id                   = data.aws_subnets.all.ids[0]
}
