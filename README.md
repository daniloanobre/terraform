# Terraform AWS

This folder contains a Terraform module that deploys an [EC2 Instance](https://aws.amazon.com/ec2/). This module outputs the Instance`Ip Address` with the value specified in the
`vm_ip` variable

Note that the EC2 Instance in this module doesn't actually do anything; it just runs an Ubuntu Server 24.04 LTS (HVM), SSD Volume Type AMI for demonstration purposes.


## Running the modules manually

1. Sign up for [AWS](https://aws.amazon.com/).
1. Configure your AWS credentials using one of the [supported methods for AWS CLI
   tools](https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-getting-started.html), such as setting the
   `AWS_ACCESS_KEY_ID` and `AWS_SECRET_ACCESS_KEY` environment variables.
1. If you prefer, create a profile by the command line in order to use it in the terraform code. It will be saved on `~/.aws/credentials`. Take a look on the [AWS user guide](https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-files.html#cli-configure-files-methods)
1. Install [Terraform](https://www.terraform.io/) and make sure it's on your `PATH`.
1. Enter into the module folder and run the following command lines:
1. Run `terraform init`.
1. Run `terraform fmt`.
1. Run `terraform validate`.
1. Run `terraform plan -out plan.out`.
1. Run `terraform apply plan.out`.
> After the previous steps, you are able to the the deployed resources on the AWS Website.
1. When you're done, run `terraform destroy` to not be charged for unused resources deployed on AWS.


## License

This code is released under the Apache 2.0 License. Please see [LICENSE](LICENSE) and [NOTICE](NOTICE) for more details.

Copyright &copy; 2024 Danilo Assis.