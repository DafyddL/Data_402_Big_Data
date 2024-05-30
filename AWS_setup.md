# Setting up an AWS instance

## Login to AWS
Go to this url: https://sparta-devops.signin.aws.amazon.com/console

![img.png](aws_images/login.png)

Enter account ID sparta-devops

Enter your username

Enter your password

![img.png](aws_images/AWSHome.png)
## Create instance
### Set server
Click on the location at the top right

![img.png](aws_images/location1.png)

Then select frankfurt

![img.png](aws_images/location2.png)
### Find EC2

Use the search bar at the top to search for EC2

![img.png](aws_images/EC2.png)

### Create an instance

Click launch instance
![img.png](aws_images/launcinstance.png)

### Settings
#### Name and tags
![img.png](aws_images/name.png)

Give your instance a name

#### Application and OS images
Select Ubuntu and set the version to 22.04 LTS from the dropdown
![img.png](aws_images/ubuntu.png)

Keep 64-bit (x86) architecture

#### Instance type

Select the instance type t2.micro

![img.png](aws_images/micro.png)

#### Key pair (login)

![img.png](aws_images/Keypair.png)

From the dropdown, select DataStudents
#### Network Settings

![img.png](aws_images/edit.png)

Click on the edit button

Leave VPC, Subnet and Auto-assign public IP at default

![img.png](aws_images/securitygroup.png)

Create a new security group

Give it a name

Give it a description

**Give it rules**
We are going to give three rules

![img.png](aws_images/rule_ssh.png)

Add a rule that accepts ssh from anywhere (not the best practice, but fine for training).

![img.png](aws_images/rule_http.png)

Add a rule that accepts http from anywhere.

![img.png](aws_images/rule_mongodb.png)

Add a rule that is Custom TCP that accepts data from anywhere on the port 27017.

#### Storage

![img.png](aws_images/storage.png)

The default storage configuration will do.
#### Finalise
Click launch instance in the summary tab on the right

![img.png](aws_images/Success.png)

![img.png](aws_images/launch.png)

Success, click the instance link to view the instance

![img.png](aws_images/Instance_runniing.png)
## Connect ssh
Download the DataStudents.rem file and put it on your ~/.ssh folder

Open gitbash, and execute `cd ~/.ssh`

Execute the command `chmod 400 "DataStudents.pem"`

In AWS, click on the instacne id on the instances page

![img.png](aws_images/clickinstance.png)

Click connect:

![img.png](aws_images/connect.png)

Select SSH client:

![img.png](aws_images/Selectssh.png)

Copy the example ssh command

![img.png](aws_images/copycommand.png)

and paste it into git bash
![img.png](aws_images/pastegitbash.png)

Et voila:

![img_1.png](aws_images/Successssh.png)


