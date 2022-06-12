output "keypair_name" {
  value = aws_key_pair.aws_key_pair.key_name
}

output "keypair_path" {
  value = local_sensitive_file.local_key_pair.filename
}
