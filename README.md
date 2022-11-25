# 4640-Assignment

### Download Terraform

https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli

### Create a API Key in Digital Ocean
1. Create a digitocean account
2. Generate a new API key and copy the key
3. Remote into your host machine and create a .env file
4. Add the following to your .env file

```bash
export TF_VAR_do_token=<your api key>
```
5. Run API key
```bash
source .env
```

### Create two directories dev and mgmt
```bash
mkdir dev
```

### Create the Configuration Files

- main.tf(provider info)
- variables.tf(variables, anything that you use twice, or could change(region, size…) )
- terraform.tfvars(variable values)
- output.tf(any output blocks, like ip addresses, and database connection uri)
- database.tf (includes db firewall)
- servers.tf(your droplets, load balancer and firewall for your servers)
- bastion.tf(includes firewall for bastion server)
- network.tf (your vpc)
- data.tf(data blocks, like your ssh keys)
- .env

##### Once created run
```bash
terraform init
terraform plan
terraform apply
```
