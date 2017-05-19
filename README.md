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

1. Install [vagrant](https://www.vagrantup.com/downloads.html).

2. Install [VirtualBox](https://www.virtualbox.org/wiki/Downloads).

3. Open Terminal on Mac OS X or command prompt on Windows and initialize a virtual machine. 

	`vagrant init ubuntu/trusty64`

4. Start-up the virtual machine using:

    `vagrant up`
    
5. SSH into the virtual maching using:

    `vagrant ssh`

6. Then download and run [this shell script](https://github.com/gms298/Configuration-Management-using-Ansible/blob/master/ansible.sh) by using`. ansible.sh`.

	* The script will automatically install all dependencies required for ansible and also install ansible.
	
	* Then it clones this repository.
	
	* After cloning, it runs the Ansible playbook to create a new AWS EC2 instance and then perform the necessary configuration management tasks.
	 
	* Finally the simple web server app is started automatically.