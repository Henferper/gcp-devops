<div style="text-align: justify;">

# **About Terraform**

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Terraform is an open-source infrastructure as code **`(IaC)`** tool that allows you to define and manage your infrastructure using a human-readable configuration file. It supports a wide range of cloud and on-premises providers, including AWS, Azure, Google Cloud, and more.

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Other informations :
- Terraform is written in Go and is designed to be extensible and customizable.
- It uses a declarative syntax, which means you describe what you want your infrastructure to look like, and Terraform figures out how to create it.

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;The code explication came from [Terraform and Yaml]("Example/README.md")

## Branch name
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;This step is like a validation to confirm wich branch is being used to run the code

## tf init
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;The step is to initialize the terraform configuration. This is the first step to run terraform. It will create a working directory for the terraform configuration and download the necessary plugins.

## tf plan
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;This step is to create an execution plan. It will show you what terraform will do if you run `terraform apply`. This is a good step to check if everything is correct before applying the changes.

## tf apply
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;This step is to apply the terraform configuration. It will create the infrastructure according to the configuration fil. This is the final step to run terraform.

## General View
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;The code is a terraform configuration file that defines a virtual machine on AWS. It uses the `aws_instance` resource to create a new instance with a specific AMI, instance type, and other properties. The code also uses the `aws_security_group` resource to create a new security group with specific rules.