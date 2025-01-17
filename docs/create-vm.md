# **Structure Configuration**

## **Step 1: Install and configure the tools**
Create a new project in the GCP

Create a new VM instance with CentOs as the OS

The Google Cloud services needs to be enabled

## **Step 2: Create new instance**
Create instance with the following configuration

Chose these options:
+ **`Name:`** centos-vm
+ **`Zone:`** More close of your location
+ **`Series:`** E2 , (VCPUs: 0.25-32, Memory: 1-128 GB)
+ **`Machine type:`** e2-medium (2 vCPU, 1 core, 4 GB memory)
+ **`Availability policies - Vm provisioning model:`** Standard
+ **`Boot disk:`** CentOs 7 (x86/64, x86_64 built on 20240515)
+ **`Identity and API access:`** service account - Compute Engine default service account
+ **`Access scopes:`** Allow default access
+ **`Firewall:`** Allow HTTP traffic (tcp:80) and Allow HTTPS traffic (tcp:443)

Click botton **`"Create"`**

Wait for the instance to be created

## **Step 3: Connect to the instance**
Connect to the instance using SSH

Click on the **`"SSH"`** button and after that click on **`"View gcloud command"`** option

Copy the command and click on the "Run in cloud sheel" button

Wait for the connection to be established

Click on the **`"SSH"`** button again and after that click on **`"Use another SSH client"`** option

Copy the command and use it to connect to the instance using your SSH client

## **Step 4: Install and configure the tools**
Clear the terminal

Write these command lines

To see the current directory
```
pwd
```
To verify the files in the current directory
```
ls
```
To create a new directory
```
mkdir project
```
To change the directory
```
cd project/
```
Help to show the commands
```
man ls
```
List all files including hidden files
```
ls -la
```
Return to the previous directory
```
cd ..
```
List all files with their informations about each file
```
ls -l
```
Exit the terminal
```
exit
```