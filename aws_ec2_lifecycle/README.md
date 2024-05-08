**Validate by the terminal that EC2 can be accessed through SSH**
> Note that in the vm.tf file you have to pass the ssh private key, which is gerenated by the terminal running the following command line
$ ssh-keygen -f aws-key

> These keys must be created before running the terraform command lines

1. ssh -i aws-key ubuntu@X.Y.Z.Z
> Use the IP Address printed in the terminal after creating the EC2 instance
