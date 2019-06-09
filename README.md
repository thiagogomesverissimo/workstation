# workstation

fast configuration of my debian workstation

## In your user, create a ssh key:

    ssh-keygen

Authorize it in the root (used in ansible):

    sudo su
    mkdir /root/.ssh
    cat /home/USUARIO/.ssh/id_rsa.pub >> /root/.ssh/authorized_keys
    chmod -R 600 /root/.ssh
    chmod 700 /root/.ssh

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

    ansible-galaxy install -r requirements.yml

## If desktop:

    ansible-playbook playbooks/desktop.yml

## cli only:

    ansible-playbook playbooks/cli.yml

## Acões feitas manualmente temporariamente:

1. Instalação das coisas do java:

    curl -s https://get.sdkman.io | zsh
    sdk install java
    sdk use java 8.0.181-zulu
    sdk install springboot
    sdk install groovy
    sdk install gradle
    sdk install maven
    sdk current

2. Instalação do Spring Tool Suite.
 - link no lançador
 - black theme
 - aumentar a fonte

3. Trocar fonte no terminal para Hack NF Relugar

4. configuração do dropbox


