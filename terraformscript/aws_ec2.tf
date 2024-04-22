provider "aws" {
  region = "eu-west-2"
}

resource "aws_instance" "AWSEC2" {
  ami           = "ami-019a292cfb114a776"
  instance_type = "t2.micro"
  key_name      = "Zain"
  security_groups = ["launch-wizard-3"]

  tags = {
    Name = "TerraformAnsible"
  }
}
