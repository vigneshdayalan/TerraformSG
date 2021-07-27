# Terraform

This utility will update the user's public ip in AWS-Managed Prefix list resource

## Run with Makefile

Setup AWS SSO access:
- You need to copy the temporary SSO credentials to a `.aws/credentials` file and ensure the profile name is `604575884205_generic-dev-access`.
- Inside `main.tf` file, update the `.aws/credentials` file path in `terraform_backend` block and as well `provider` block.

In project root directory run the following commands

```shell
make plan name={username}  For e.g. make plan name=Vignesh
```

- This command will add your public ip to AWS Managed Prefix list resource with given name in command.
And Managed Prefix list resource managed by terraform will be linked to all our service public security groups.

Pre Requisites:
`users must have below`

- Terraform `https://www.terraform.io/downloads.html`
    -If `windows` - download and set the downloaded exe file path in environmental variable
    -If `mac`   - you can run the command `brew install terraform`
- Python (install required modules `pip install requests`)
- Makefile




