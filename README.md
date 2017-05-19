# Configuration Management using Ansible

## Objectives

Create an ansible playbook that is able to:
 
* **Provision:** Create a new virtual machine from a virtual machine provider (in this case, Amazon EC2)

* **Setup:** Install the following items:
    * Install node.js
    * Install forever
    * Pull/clone [this simple server (from github)](https://github.com/CSC-DevOps/App) into a destination 
    * Install npm packages
    
* **Tasks:**
    * Run app using node and forever `forever start node main.js`
    * Security: A task that ensures `bash`, `openssl`, `openssh-client`, and `openssh-server` are running latest version.
    * Cleanup: Removing content in `/tmp/*`

## Instructions

### Setting up Ansible (local vagrant machine)

1. Install [vagrant](https://www.vagrantup.com/downloads.html).
2. Install [VirtualBox](https://www.virtualbox.org/wiki/Downloads).
3. Open Terminal on Mac OS X or command prompt on Windows and initialize a virtual machine. 

	`vagrant init ubuntu/trusty64`

4. Start-up the virtual machine using:

    `vagrant up`
    
5. SSH into the virtual maching using:

    `vagrant ssh`

6. Install ansible on this virtual machine (control server) using:

    `sudo apt-get update`
    
    `sudo apt-get -y install git make vim python-dev python-pip libffi-dev libssl-dev libxml2-dev libxslt1-dev libjpeg8-dev zlib1g-dev`

    `sudo pip install ansible`

7. Test if ansible along with it's dependencies such as python, etc is set up properly. Use this command:

    `ansible all -m ping`

## Running Playbook

**Only After** setting up a centralized ansible control server - either locally or remotely (AWS) using the setup instructions above, run the following steps:

1. SSH into ansible control server VM.

2. Then run [this shell script]().

	* The script will clone the simple web server App 
	* After cloning, it runs the Ansible playbook to create a new AWS EC2 instance and then perform the necessary configuration management tasks. Finally the simple web server app is started automatically.