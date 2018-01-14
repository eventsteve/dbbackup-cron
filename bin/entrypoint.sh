#!/bin/bash

set -eo pipefail

# make sshd needed directories
# mkdir -p /root/.ssh
mkdir -p /var/run/sshd

# add ssh private and public keys to root user
# echo "${PUBLIC_KEY}" | tee -a /root/.ssh/id_rsa.pub
# echo "${PRIVATE_KEY}" | tee -a /root/.ssh/id_rsa
# chmod 600 /root/.ssh/id_rsa*

chmod 600 -R /root/.ssh

bash -x /root/db-backuper.sh -u "${DB_USER}" -p "${DB_PASS}" -h "${DB_HOST}" -d "${DB_NAME}" -l /root/${FILE_NAME}.sql -r /backup1/${REMOTE_DIR} -b ${BACKUP_SERVER}

exit 0
