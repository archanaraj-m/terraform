### create manually vpc's ,subnets,2 vm's load balancer and import terraform

* create manually first vpc(192.168.0.0/16)
* and next create 4 subnets with that vpc
* it's directly create vpc and more in that create 4subnets with(192.168.0.0/24)
* next create 2 instances with that vpc and in that enable public access





use this commands for import
```
terraform import aws_instance.vm1 i-06caa0698e765598c
terraform import aws_vpc.project-vpc vpc-0f87db502b31e8994
terraform import aws_subnet.sub13b subnet-0938df2bff65efee6
terraform import aws_subnet.sub23apublic subnet-06cd6d673fed83f3c
```
