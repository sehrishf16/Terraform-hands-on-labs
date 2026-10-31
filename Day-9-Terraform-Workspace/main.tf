resource "aws_instance" "name" {
    ami = "ami-0c230065b91270bc6"
    instance_type = "t2.medium"
    availability_zone = "us-east-1a"
    tags = {
        Name = "sehrish"
    }

  
}

# new, list, show, select and delete Terraform workspaces.

# Subcommands:
#     delete    Delete a workspace
#     list      List Workspaces
#     new       Create a new workspace
#     select    Select a workspace
#     show      Show the name of the current workspace