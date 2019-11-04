# workstation

Fast configuration of my debian workstation

## ssh key:

Create a new one, if you do not have it:

    ssh-keygen

This playbook assumes you runs it as root. 
So, authorize it in the root:

    sudo su
    mkdir /root/.ssh
    cat /home/thiago/.ssh/id_rsa.pub >> /root/.ssh/authorized_keys
    chmod -R 600 /root/.ssh
    chmod 700 /root/.ssh

## Ansible install on debian:

Dependencies:

    sudo apt-get install dirmngr openssh-server git

Insert this line at: /etc/apt/sources.list

    deb http://ppa.launchpad.net/ansible/ansible/ubuntu trusty main

Add the key:
    
    sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 93C4A3FD7BB9C367
    sudo apt-get update
    sudo apt-get install ansible 

## Download roles:

    ansible-galaxy install -r requirements.yml

## If desktop:

    ansible-playbook playbooks/desktop.yml

## cli only:

    ansible-playbook playbooks/cli.yml

## test cli.yml playbook at VM:

1. Create your user at VM:

    vagrant ssh
    sudo adduser thiago

2. Enable password authentication at VM editing /etc/ssh/sshd_config:

    PasswordAuthentication yes

3. Restart ssh:

    sudo service ssh restart

4. Create new ssh keys or copy from your computer:

    scp -r ~/.ssh thiago@192.168.100.200:

5. Inside VM, allows root ssh using your key:
    
    vagrant ssh
    sudo su
    mkdir /root/.ssh
    cat /home/thiago/.ssh/id_rsa.pub >> /root/.ssh/authorized_keys
    chmod -R 600 /root/.ssh
    chmod 700 /root/.ssh

## Acões feitas manualmente temporariamente:

### Instalação das coisas do java:

    curl -s https://get.sdkman.io | zsh
    sdk install java
    sdk use java 8.0.181-zulu
    sdk install springboot
    sdk install groovy
    sdk install gradle
    sdk install maven
    sdk current

### Instalação do Spring Tool Suite.

 - link no lançador
 - black theme
 - aumentar a fonte

### Trocar fonte no terminal para Hack NF Relugar

### dev env:

	scp -i /home/thiago/.vagrant.d/insecure_private_key -r ~/.ssh vagrant@192.168.100.200:ssh
	vagrant ssh
	sudo su
	mv /home/vagrant/ssh /root/.ssh
	chown -R root:root /root/.ssh
	adduser thiago
	addgroup thiago sudo


	
	


