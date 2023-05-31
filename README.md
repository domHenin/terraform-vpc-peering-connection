# Terraform -- Getting a Better Understanding

## Overview

Found new infrastructure to build. this will allow me to get some hands on experience with different AWS services using Terraform. Following this [Guide](https://www.itwonderlab.com/en/terraform-ansible-aws-howto/)  and provided access to this [GitHub Repo](https://github.com/itwonderlab/terraform-aws-ec2-rds-basic-free) will give me a better understanding using different AWS Services along with Terraform Infrastructure.

-----


# Getting Started

### VPC-Peering

Generic Vpc-Peering Architecture including:
   - 2 VPCs
   - 4 subnets
   - 2 EC2 instances

This example will be refined and improved in later modules.

### Architecture
![](infrasturcture-diagram/AWS-VPC-Peering–Tutorial.png)

----

## Guides
- [Complete Terraform Guide](https://www.itwonderlab.com/en/terraform-ansible-aws-howto/)
- [GitHub Repo](https://github.com/itwonderlab/terraform-aws-ec2-rds-basic-free)
- [Create a VPC peering connection](https://docs.aws.amazon.com/vpc/latest/peering/create-vpc-peering-connection.html)
- [VPC peering configurations with routes to an entire VPC](https://docs.aws.amazon.com/vpc/latest/peering/peering-configurations-full-access.html#two-vpcs-full-access)
- [Update your route tables for a VPC peering connection](https://docs.aws.amazon.com/vpc/latest/peering/vpc-peering-routing.html)
- [Update your route tables for a VPC peering connection](https://docs.aws.amazon.com/vpc/latest/peering/vpc-peering-routing.html)

----

## Running Terraform

Run the following to ensure ***terraform*** will only perform the expected
actions:

```sh
terraform fmt
terraform validate
terraform plan
terraform init
terraform apply
```

## Tearing Down the Terraformed Infrastructure

Run the following to verify that ***terraform*** will only impact the expected
nodes and then tear down the cluster.

```sh
terraform plan
terraform destroy
```
----


## VPC Subnet Creation

When calling the *module* at `main.tf` refer the created `variables` to set the needed *vpc_id* for peering-connection

The VPC- Alpha will be created using the `10.0.0.0/16` cidr range. The subnet cidr range `10.0.0.4/24` See [ipv4 Subnet Calculator](https://www.site24x7.com/tools/ipv4-subnetcalculator.html)

The VPC- Alpha will be created using the `172.31.0.0/16` cidr range. The subnet cidr range `1172.31.0.8/24` See [ipv4 Subnet Calculator](https://www.site24x7.com/tools/ipv4-subnetcalculator.html)

*VPC using AWS availability zones with a private and a public network*

Instance placement has to take into account that data transfer between different Availability Zones has a cost, therefore achieving high availability by distributing infrastructure between Availability Zones has an impact on the total budget

----

## Notes::
- Your VPC peering connection (pcx-0370d265896c59b61 | test-peer) has been established.
To send and receive traffic across this VPC peering connection, you must add a route to the peered VPC in one or more of your VPC route tables



VPC A:-
cidr:: 10.0.0.0/16
subnet cidr:: 10.0.0.4/32

vpc peering connection

VPC B:-
cidr:: 172.31.0.0/16
subnet cidr:: 172.31.0.8/32