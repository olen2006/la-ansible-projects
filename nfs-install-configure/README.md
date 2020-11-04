#### _This Playbook does the following_

<img src="images/Image.png" width="80%" height="50%">

###on nfs

    * Make sure nfs-utils is installed.
    * Configure /etc/exports via an Ansible template stored in /home/ansible/exports.j2. Deploy the template so that /mnt/nfsroot is exported with read and write to all hosts.
