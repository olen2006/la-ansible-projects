# Encryption/Decryption of the fule using ansible-vault.

- Create a vault first

`vim vault`

`ansible-vault --help `

`asible-vault encrypt vault `



## Provide password for encryption.

`ansible-vault decrypt vault `

`ansible-vault view vault`

`ansible-vault edit vault`

## Labels can be used to label particular files.

```asible-vault encrypt --vault-id mysecret@prompt vault```

```ansible-playbook secret.yml --vault-id prod@prompt```

* Better approuch to use **dev@prompt, stage@prompt** etc. It helps ansible to decrypt data more efficiantly.
* Since ansible 2.4 + **--vault-id** allowed to use with different passwords through out the same playbook.

* Creation of a new vault using inline encryption. Output can be copied and passed into ansible-playbook.

```ansible-vault encrypt_string --vault-id prod@prompt 'new_var: new-value'```
