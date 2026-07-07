data "aws_ami" "amazon_linux" {
  most_recent = true

  owners = ["amazon"]

  filter {
    name   = "name"
    values = ["al2023-ami-*-x86_64"]
  }
}

resource "aws_instance" "web_server" {
  ami                    = data.aws_ami.amazon_linux.id
  instance_type          = "t3.micro"
  subnet_id              = var.public_subnet_id
  vpc_security_group_ids = [var.public_security_group_id]

  key_name             = var.key_name
  iam_instance_profile = var.iam_instance_profile

  user_data = <<-EOF
#!/bin/bash
dnf update -y
dnf install nginx -y
systemctl enable nginx
systemctl start nginx

cat <<HTML > /usr/share/nginx/html/index.html
<!DOCTYPE html>
<html>
<head>
    <title>Terraform DevOps Project</title>
</head>
<body style="background-color:#1e293b; color:white; text-align:center; font-family:Arial; margin-top:100px;">
    <h1>🚀 Terraform DevOps Project</h1>
    <h2>Welcome to Production Environment</h2>
    <p>This EC2 instance was automatically configured using Terraform.</p>
</body>
</html>
HTML

EOF

  tags = {
    Name = "${var.environment}-web-server"
  }
}
