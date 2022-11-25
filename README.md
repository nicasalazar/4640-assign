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

#### Once created run
```bash
terraform init
terraform plan
terraform apply
```
#### You should receive this output if configured successfuly
<img width="430" alt="Screen Shot 2022-11-24 at 3 55 54 PM" src="https://user-images.githubusercontent.com/60679947/203883564-13cc498c-a685-4cdd-a326-38eb04749897.png">

### Connect to the Internal Server (Bastian)
#### On your local machine:
```bash
eval $(ssh-agent)
ssh-add /home/user-name/.ssh/DO_key
ssh -A root@bastion-ip
```
<img width="494" alt="Screen Shot 2022-11-24 at 5 33 26 PM" src="https://user-images.githubusercontent.com/60679947/203883819-97b82f6f-4508-4d2d-b639-9bc2f4480471.png">

#### Now connected to the bastion server via ssh
```bash
ssh root@one-of-your-servers-ip
```
<img width="554" alt="Screen Shot 2022-11-24 at 5 32 32 PM" src="https://user-images.githubusercontent.com/60679947/203883845-3a14a3aa-8fff-4b35-aaf1-6964710ce3e6.png">

