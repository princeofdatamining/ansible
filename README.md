
## vim ~/.ansible.cfg

```
[defaults]
private_key_file = ~/.ssh/id_rsa
remote_user = ubuntu
host_key_checking = False
```

## vim /etc/ansible/hosts

```
[GROUP]
HOST
...

...

```

## vim ping.yml

```
---
- hosts: all
  tasks:
  - name: ping
    ping:
  - name: echo
    command: echo "hello ansible"
```


## ansible & playbook

```
ansible -i HOST, all -u USER -m setup
ansible -i HOST, all -u USER -m ping
ansible -i HOST, all -u USER -a "echo hello,ansible"

ansible-playbook -i HOST, -u USER ping.yml
```

## resources

```
https://codepoets.co.uk/2014/ansible-random-things/
```

## playbook

```
shell: if [ -z "$PYENV_ROOT" ]; then echo 'no'; else echo 'yes'; fi
```
