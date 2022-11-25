# 4640-Assignment

## Download Terraform

Steps are from the following link: https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli

## Create a API Key in Digital Ocean
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

## Create two directories dev and mgmt
```bash
mkdir dev
```

## Create the Configuration Files

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

#### Your project structure should look similar to this

<img width="323" alt="Screen Shot 2022-11-24 at 5 57 15 PM" src="https://user-images.githubusercontent.com/60679947/203885053-5e7548f9-1daf-497c-a433-f89856a3f120.png">


#### Once created run
```bash
terraform init
terraform plan
terraform apply
```
#### You should receive this output if configured successfuly
<img width="430" alt="Screen Shot 2022-11-24 at 3 55 54 PM" src="https://user-images.githubusercontent.com/60679947/203883564-13cc498c-a685-4cdd-a326-38eb04749897.png">

## Connect to the Internal Server (Bastian)
#### On your local machine:
```bash
eval $(ssh-agent)
ssh-add <your ssh key path>
ssh -A root@<your bastion-ip>
```
<img width="494" alt="Screen Shot 2022-11-24 at 5 33 26 PM" src="https://user-images.githubusercontent.com/60679947/203883819-97b82f6f-4508-4d2d-b639-9bc2f4480471.png">

#### Now connected to the bastion server via ssh:
```bash
ssh root@<one-of-your-servers-ip>
```
<img width="554" alt="Screen Shot 2022-11-24 at 5 32 32 PM" src="https://user-images.githubusercontent.com/60679947/203883845-3a14a3aa-8fff-4b35-aaf1-6964710ce3e6.png">

## Bastian Firewall Details
1. Go to your **Digital Ocean**
2. In **Manage** select **Networking** then select **Firewall**

<img width="1006" alt="Screen Shot 2022-11-24 at 5 53 05 PM" src="https://user-images.githubusercontent.com/60679947/203884737-a8260f85-bee9-40ae-8a99-2d63403f4f47.png">


## Database Connection Details
1. Go to your **Digital Ocean**
2. In **Manage** select **Databases**
3. Select the Database you created
4. View the **Connection Details**

<img width="601" alt="Screen Shot 2022-11-24 at 5 46 44 PM" src="https://user-images.githubusercontent.com/60679947/203884325-77bcd09a-7d27-4e14-9a98-591a468683ff.png">


