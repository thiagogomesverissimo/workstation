# workstation

1 - configura ssh

2 - colocar no /etc/apt/source.list: contrib non-free

3 - pyenv

    sudo apt update
    sudo apt install -y build-essential libssl-dev zlib1g-dev libbz2-dev \
    libreadline-dev libsqlite3-dev curl libncursesw5-dev xz-utils \
    tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev

    curl https://pyenv.run | bash
    /home/thiago/.pyenv/bin/pyenv install 3.12
    /home/thiago/.pyenv/versions/3.12.9/bin/python3.12 -m venv venv

    # ou
    pyenv local 3.12
    python -m venv venv

3 - Ansible

    source venv/bin/activate
    ./venv/bin/pip3 install -r requirements.txt

4 - roles e playbooks

    ./venv/bin/ansible-galaxy install -r requirements.yml --force
    ./venv/bin/ansible-playbook playbooks/desktop.yml
    ./venv/bin/ansible-playbook playbooks/cli.yml


5 -  Manuais

- Instalação do .deb chrome
- Instalação do .deb dbdeaver
- Instalação do .deb rstudio
- Instalação do .deb vagrant
- Instalação do .deb vscodium
- sudo apt install texlive-full (se for usar latex na máquina)