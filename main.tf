variable "instance_type" {
  type        = string # there, bool, number, list, map, set, string, tuple
  description = "Instance type"
  default     = "c5.large"
}

data "aws_region" "current" {
  
}

resource "aws_instance" "web" {
  ami           = "ami-Oc55b159cbfafe188"
  instance_type = "t2.micro"
}

resource "aws_instance" "web1" {
  ami           = "ami-Oc55b159cbfafe145"
  instance_type = var.instance_type
}

output "region" {
  value = data.aws_region.current.name
}

output "web_id" {
  value = aws_instance.web.arn
}