# Dynamic subnet creating in different availablity zones

## Description
> By this terraform code you can create VPC and subnet(private and public) on different availability zone dynamically.
> Also it will create a security group using dynamic block for minimizing the script.
> Modify **terrafor.tfvars** file according to your requirement.

For more information, you can refer below link to have a detailed understanding of the function **cidrsubent**.
[a link](https://www.terraform.io/language/functions/cidrsubnet)
[a link](https://www.terraform.io/language/expressions/dynamic-blocks)


## You can run below command to execute the code:
```
terraform init
terraform plan -out Outfile
terraform apply Outfile
```
