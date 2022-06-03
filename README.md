# Networking
## Practice 3 - Luis Becerra

## Subnetting assignment
    There are 4 offices in the company, each one has a different amount of hosts.
    - Office 1: 80 Hosts - Private Subnet
    - Office 2: 500 Hosts - Private Subnet
    - Office 3: 40 Hosts - Private Subnet
    - Office 4: 30 Hosts - Public Subnet
    Network ID 192.168.0.0/20

![subnetting](Networking-para-git/Subnetting.png)

## How to create 
    1) Clone the repository
    2) Open the folder with Visual Studio
    3) Configure the AWS Credentials
    4) Execute the command $Terraform init
    5) Execute the command $Terraform plan -out NetLBplan.tfplan
    6) Execute the command $Terraform apply NetLBplan.tfplan
    7) Log in to AWS, ec2 services
    8) Select the office4_ec2 public ip
    9) Click the button connect and copy the ssh command
    10) Make sure you have a keypair file, extension pem, in the same folder as the code
    11) Paste the command in the terminal
    12) Once you are connected, you can connect with any private office. But first you need to create a file named as your keypair file, with the same content, using command nano.
    13) Now follow the 8 to 11 steps.
