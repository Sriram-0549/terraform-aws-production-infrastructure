resource "aws_eip" "web_eip" {
  instance = aws_instance.web_server.id
  
  tags = {
    Name = "${var.environment}-web-eip"
  }
}
