locals {
  base_path = var.store_in_root ? path.root : "."
  key_path  = "${local.base_path}/${var.key_name}.pem"
}

resource "tls_private_key" "private_key" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "local_sensitive_file" "local_key_pair" {
  filename        = local.key_path
  content         = tls_private_key.private_key.private_key_pem
  file_permission = "0400"
}

resource "aws_key_pair" "aws_key_pair" {
  key_name   = var.key_name
  public_key = tls_private_key.private_key.public_key_openssh
}
