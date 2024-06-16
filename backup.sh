#!/bin/bash

# Variables
DB_USER="your_db_user"
DB_PASSWORD="your_db_password"
DB_NAME="your_db_name"
BACKUP_DIR="/path/to/backup/directory"
TIMESTAMP=$(date +"%Y%m%d%H%M%S")
BACKUP_FILE="$BACKUP_DIR/$DB_NAME-$TIMESTAMP.sql"

# Commande mysqldump
/usr/bin/mysqldump -u $DB_USER -p$DB_PASSWORD $DB_NAME > $BACKUP_FILE

# Vérifier si l'exportation a réussi
if [ $? -eq 0 ]; then
  echo "Backup successful: $BACKUP_FILE"
else
  echo "Backup failed"
fi
