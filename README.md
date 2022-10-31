# workspace

This repo regroups all my ubuntu configuration used for my personnal workspace. This is based on Ansible and can be deployed locally through the `main.yaml` playbook.

## Requirements
- Install pip:
    ```bash
    ​sudo apt install python3-pip
    ```
- Install Ansible:
    ```bash
    python3 -m pip install --user ansible
    ```
- Create a SSH agent with [GitHub](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/about-ssh)

## Run the playbook
```bash
ansible-playbook ws_playbook.yaml -K
```
A `BECOME password` is then asked, refer your Ubuntu user password. Now, let Ansible work for you ! 




