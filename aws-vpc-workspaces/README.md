**Managing Terraform Workspaces**
> Terraform can manage the same configuration with separate state data depending on which workspace you are configured, and therefore managing set of non-overlapping resources for each deployment. After running the command line 'terraform init', a default workspace is created.

*Terraform Workspace CLI*

Usage: terraform [global options] workspace

new, list, show, select and delete Terraform workspaces.

Subcommands:

| Subcommand  | Param       | Description
| ----------- | ----------- | -----------
| **delete**  | workspace   | Delete a workspace
| **list**    | ----------- | List Workspaces
| **new**     | workspace   || Create a new workspace
| **select**  | workspace   || Select a workspace
| **show**    | ----------- | Show the name of the current workspace

After running the following command line '$ terraform workspace new **workspace**', a file located at .terraform/environment will be created and the current workspace will be logged into it. Every time you change the current workspace, the data in this file environment will be updated.

After applying the terraform configuration, the following following command line will differentiate the state depending on which workspace you are configuring the project. For the current project, we will have:
`$ terraform workspace list`
- default
- dev
- \* prod

`$ terraform state list`
- aws_subnet.subnet[0]
- aws_subnet.subnet[1]
- aws_subnet.subnet[2]
- aws_vpc.vpc

This output corresponds exactly what we expect, since in network.tf we configured the terraform to create one vpc and one or three subnets if the workspace is 'prod'.