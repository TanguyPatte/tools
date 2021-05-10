# Help Me Vault That

## Purpose

Given following ansible group_vars file

```yaml

# postgres
postgres_root_password: "{{ vault_postgres_root_password }}"
postgres_my_app_user: my_user
postgres_my_app_password: "{{ vault_postgres_my_app_password }}"

# redis
redis_default_password: "{{ vault_redis_default_password }}"

```

It will generate on stdout the associated vault file with random strings for password using `pwgen`

```yaml
# postgres
vault_postgres_root_password: eBoghoot8lool0aiW7quoamimiu0ieweegaimieL
vault_postgres_my_app_password: piewielae8ahPheiheSiepahng7ibahx4oorai3j

# redis
vault_redis_default_password: MohL4zoow0ak7oothahx1OotheuShesohsir8Oov

```


## Usage

After adding the script in you PATH:

```bash
help_me_vault_that.sh <PATH_TO_GROUP_VAR_FILE>
```
