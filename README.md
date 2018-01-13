# DBBackup cron
## A kubernetes cronjob to take backup from the DB and upload it on the backup server.
### ENVs:
+ **PUBLIC_KEY**: ssh rsa public key.
+ **PRIVATE_KEY**: ssh rsa private key.
+ **DB_USER**: DataBase username.
+ **DB_PASS**: DataBase password.
+ **DB_HOST**: DataBase hostname.
+ **DB_NAME**: DataBase name.
+ **BACKUP_SERVER**: Backup destication server.
+ **REMOTE_DIR**: Directory on Backup server.
