provider "aws"{
    region = us-east-1
}
resource "aws_key_pair" "my_key"{
    key_name="my_key"
    public_key=(~.ssh/id_rsa.pub)
}
resource "aws_security_group" "my_group"{
    name="my_group"
    description="this is for ingress and egress"
    ingress{
        from_port=22
        to_port=22
        protocol="tcp
        cidr_block=[0.0.0.0/0]
    }
    egress{
        from_port=0
        to_port=0
        protocol="-1"
        cidr_block=[0.0.0.0/0]

    }
}
resource "aws_instance" "my_instance"{
    ami_id=
    instance_type=
    key_pair=
    secirty_group="aws_security_group.my_group.name"
}
tags ={
    name="my_instance"
}