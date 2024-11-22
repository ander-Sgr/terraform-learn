resource "aws_vpc" "myvpc" {
  cidr_block = "10.0.0.0/16"
  tags = {
      Nmame = "youtube-vpc"
  }
}

resource "aws_vpc" "myvpc_dr" {
  provider   = aws.europe
  cidr_block = "172.16.0.0/16"
}
