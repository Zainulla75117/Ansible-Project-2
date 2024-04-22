provider "aws"{
region="eu-west-2"
}//provider End

resource"aws-instance" "AWSEC2"{
ami="019a292cfb114a776"
instance_type="t2.micro"
key_name="Zain.pem"
security_groups=["launch-wizard-3"]
tags={
    Name="TerraformAnsible"
}//tags  End
}//resource End