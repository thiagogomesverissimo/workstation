# workstation

Recursos desse repo: 

    ansible-galaxy install -r requirements.yml
    ansible-playbook playbooks/desktop.yml
    ansible-playbook playbooks/cli.yml

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
