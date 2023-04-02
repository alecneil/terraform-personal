output "name" {
  value = "hi from terraform"
}

resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
}