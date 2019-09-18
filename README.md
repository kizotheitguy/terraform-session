# terraform-session

## Requirements
- Azure Tenant and Active Subscription
- AWS Account
- Python
- Terraform [Download](https://www.terraform.io/downloads.html)

MacOs or Linux Machine
- Python-Pip
- aws-cli: visit [Installing the AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-install.html)
- azure-cli: visit [Installing the Azure CLI](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli?view=azure-cli-latest)

Windows Machine:
- GitBash [Bash](https://git-scm.com/downloads) or Ubuntu [Microsoft-Ubuntu](https://www.microsoft.com/en-us/p/ubuntu/9nblggh4msv6?activetab=pivot:overviewtab)
- Azure CLI [Download](https://docs.microsoft.com/bs-latn-ba/cli/azure/install-azure-cli-windows?view=azure-cli-latest)
- AWS CLI [Download](https://docs.aws.amazon.com/cli/latest/userguide/install-windows.html)

## Environment Set-up

For Azure users, do
```
az login

# will pop-up a browser, enter your credentails to sign in 
# then

az account set -s <your subscription ID>
```

For AWS users, do
```
aws configure
AWS Access Key ID [None]: XXXXXXXXXXXXXXXXXXXXXX
AWS Secret Access Key [None]: <your Access Key>
Default region name [None]: eu-west-2
Default output format [None]: json
```

## Running Terraform modules
Clone this repo

```
# Change directory to your Cloud Provider
cd azure # or cd aws
terraform init
terraform plan -out azure.plan
terraform apply azure.plan

# To Clean UP
terraform destroy -auto-approve
```
