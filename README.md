# terraform-aws-ssh-keypair
This Terraform module created a keypair in AWS and creates a local file which is the private key in the current working directory.

Usage:

To import the module, do the following:

module "ssh-key-pair" {
  source    = ""
  key_name = ""

}
