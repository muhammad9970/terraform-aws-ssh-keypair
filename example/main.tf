module "ssh-keypair" {
  source   = "muhammad9970/ssh-keypair/aws"
  version  = "1.0.0"
  key_name = var.key_name
}
