module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = ">= 3.0"

  name                        = "test-instance"
  ami                         = data.aws_ami.ubuntu.id
  associate_public_ip_address = false
  vpc_security_group_ids      = [module.tfc_agent_sg.security_group_id]
  subnet_id                   = data.aws_subnets.all.ids[0]
}
