# terraform-aws-ssh-keypair
This Terraform module creates a keypair in AWS and creates a local file which is the private key in the directory from where Terraform is run.

Usage:

module "ssh-keypair" {
  source    = "muhammad9970/ssh-keypair/aws"
  version = "1.0.0"
  key_name = var.key_name
}
