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

INSTALAR pyenv

Dependencies:

    sudo apt-get install -y make build-essential libssl-dev zlib1g-dev libbz2-dev \
libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev \
xz-utils tk-dev libffi-dev liblzma-dev

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

## vagrant install

Take .deb package at https://www.vagrantup.com/downloads.html and:

    sudo apt install ./vagrant_2.2.14_x86_64.deb

libvirt plugin for vagrant:

    $ vagrant plugin install vagrant-libvirt
    $ vagrant plugin list

Some boxes I like:

    vagrant box add generic/debian9 --provider=libvirt
    vagrant box add generic/debian10 --provider=libvirt
    vagrant box add generic/ubuntu1604 --provider=libvirt
    vagrant box add generic/ubuntu1804 --provider=libvirt

## test cli.yml playbook at VM:

Create your user at VM:
      
    vagrant ssh
    sudo adduser thiago

Enable password authentication at VM editing /etc/ssh/sshd_config:

    PasswordAuthentication yes

Restart ssh:

    sudo service ssh restart

Create new ssh keys or copy from your computer:

    scp -r ~/.ssh thiago@192.168.100.200:

Inside VM, allows root ssh using your key:
    
    vagrant ssh
    sudo su
    mkdir /root/.ssh
    cat /home/thiago/.ssh/id_rsa.pub >> /root/.ssh/authorized_keys
    chmod -R 600 /root/.ssh
    chmod 700 /root/.ssh
