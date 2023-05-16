Error Message Docs:

`outputs.tf` 
```
╷
│ Error: Unsupported attribute
│
│   on modules/aws/network-base/outputs.tf line 3, in output "vpc_name_a":
│    3:   value       = aws_vpc.vpc_alpha.name
│
│ This object has no argument, nested block, or exported attribute named "name".
╵
╷
│ Error: Reference to undeclared resource
│
│   on modules/aws/network-base/outputs.tf line 8, in output "vpc_cidr_a":
│    8:   value       = aws_vpc.vpc_cidr_a.cidr_block
│
│ A managed resource "aws_vpc" "vpc_cidr_a" has not been declared in module.network_base.
╵
╷
│ Error: Unsupported attribute
│
│   on modules/aws/network-base/outputs.tf line 13, in output "vpc_name_b":
│   13:   value       = aws_vpc.vpc_bravo.name
│
│ This object has no argument, nested block, or exported attribute named "name".
```