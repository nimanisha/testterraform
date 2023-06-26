
resource "aws_instance" "myec2"{
ami = "ami-00183ea8ca7298292"
instance_type = "t2.micro"
key_name=ec2
vpc_security_group_ids = [output.sgid]
}
resource "aws_security_group" "ec2-sg"{
name = "myec2sg"
ingress {
form_port=var.port
to_port=var.port
cidr_blocks=["0.0.0.0/0"]
}
egress {
form_port=var.port
to_port=var.port
cidr_blocks=["0.0.0.0/0"]
}
}
output "sgid"{
  value=aws_security_group.ec2-sg.id
locals "port"{
80,443,22}
