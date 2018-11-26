# workstation

fast configuration of my debian workstation

## Importing ssh key:

    usuario='thiago'
    cp -a keys/ssh /home/$usuario/.ssh
    sudo chmod -R 600 /home/$usuario/.ssh
    sudo chmod 700 /home/$usuario/.ssh

Same to root (used in ansible):

    sudo cp -a /home/$usuario/.ssh /root/.ssh
    sudo chown -R root: /root/.ssh

## Ansible install on debian:

    # Insert this line at: /etc/apt/sources.list
    deb http://ppa.launchpad.net/ansible/ansible/ubuntu trusty main

    # after
    sudo apt-get install dirmngr
    sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 93C4A3FD7BB9C367
    sudo apt-get update

## Install packages:

    sudo apt-get install ansible openssh-server git

## Download roles:

    cd dotfiles
    ansible-galaxy install -r requirements.yml

## If desktop:

    ansible-playbook playbooks/desktop.yml

## cli only:

    ansible-playbook playbooks/cli.yml

## Acões feitas manualmente temporariamente:

    curl -s https://get.sdkman.io | zsh
    sdk install java
    sdk use java 8.0.181-zulu
    sdk install springboot
    sdk install groovy
    sdk install gradle
    sdk install maven
    sdk current

