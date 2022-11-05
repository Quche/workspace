# workspace

This repo regroups all my ubuntu configuration used for my personnal workspace. This is based on Ansible and can be deployed locally through the `main.yaml` playbook.

## Requirements
- Install pip:
    ```bash
    sudo apt install python3-pip
    ```
- Install Ansible:
    ```bash
    python3 -m pip install --user ansible
    ```
- Create a SSH agent with [GitHub](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/about-ssh)

## How it works:
Several tasks are sequentially proceeded to install my main components. Only 1 role is proposed (`user`) but this could be changed to several user for all applications. Everything stands on generic components and no additional informations are required but for terminal settings. In this specific list of task, configuration files are downloaded from private personnal repo.

## List of procedures/installations:

- APT update, upgrade
- filesystem modification (add specific personnal paths)
- Git (local parameters)
- Terminal settings (ZSH, OhMyZSH, Terminator and CLI)
- Julia LTS and ODBC related drivers
- Docker

## Run the playbook

### First installation

First, git clone this repo on your local machine:

```bash
git clone git@github.com:Quche/workspace.git
```

In the local dir, change variable names in `/vars/main.yml`: USERNAME stands for the name of the ubuntu user. 

Go to the local clone and launch ansible:
```bash
ansible-playbook main.yaml -K
```
A `BECOME password` is then asked, refer your Ubuntu user password.

### Specific update/installation
Ansible allows to run only a part or a subpart of the project by using the `-t` parameter. All the operations have a `tag` which allows to be explicitely select the part of the deployment user want to play. 

For example, if user want to only update terminal: 


## TODO
- Compare this code with other approaches such as [this complete example](https://github.com/bradwilson/ansible-dev-pc).
- Separate all the specific operations into roles.




