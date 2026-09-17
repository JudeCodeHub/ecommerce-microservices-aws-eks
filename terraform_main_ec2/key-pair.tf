resource "tls_private_key" "jumphost" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "aws_key_pair" "jumphost" {
  key_name   = var.key_name
  public_key = tls_private_key.jumphost.public_key_openssh
}

resource "local_sensitive_file" "jumphost_private_key" {
  content         = tls_private_key.jumphost.private_key_pem
  filename        = "${path.module}/${var.key_name}.pem"
  file_permission = "0400"
}
