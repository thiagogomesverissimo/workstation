# workstation

1 - configura ssh

2 - colocar no /etc/apt/source.list: contrib non-free

2 - Instalação

    sudo apt install python3-venv
    python3 -m venv venv
    source venv/bin/activate
    ./venv/bin/pip3 install -r requirements.txt

    ./venv/bin/ansible-galaxy install -r requirements.yml --force
    ./venv/bin/ansible-playbook playbooks/desktop.yml
    ./venv/bin/ansible-playbook playbooks/cli.yml


3 -  Manuais

- Instalação do .deb chrome
- Instalação do .deb dbdeaver
- Instalação do .deb rstudio
- Instalação do .deb vagrant
- Instalação do .deb vscodium
- sudo apt install texlive-full (se for usar latex na máquina)