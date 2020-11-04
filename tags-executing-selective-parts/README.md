- Ansible allows for both plays and tasks to be tagged
- Tagging a play or task allows to run playbook in a way that only plays or tasks with particular tag will by executed
- Alternatively **--skip-tags** may be used to execute everything but specified tags
- Note: several tasks can be tagged the same
- Specify which tags to run or not to run via arguments to the ansible-playbook

`ansible-playbook tags.yml -t software,files`

`ansible-playbook tags.yml --skip-tags software`
