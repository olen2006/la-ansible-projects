## _This Playbook does the following_

<img src="images/Image.png" width="80%" height="50%">

### on nfs

- Make sure nfs-utils is installed.
- Configure **/etc/exports** via an Ansible template stored in **/exports.j2**. Deploy the template so that **/mnt/nfsroot** is exported with **read** and **write** to all hosts.
- A handler runs the command **exportfs -a** if the file **/etc/exports** is modified in a playbook task.

### on remote

- Configure **/etc/hosts** from a template file stored on control at **/etc.hosts.j2** with the following entries:
  ```javascript
  127.0.0.1 localhost {{ ansible_hostname }}
  {{ nfs_ip }} {{ nfs_hostname }}
  ```
  > Note: variables **{{ nfs_ip }}** and **{{ nfs_hostname }}** are populated using magic variables in playbook.
- Create users from file stored on control at **/user-list.txt** only if the remote host has the file **/opt/user-agreement.txt**.

```ansible-playbook nfs.yml```
