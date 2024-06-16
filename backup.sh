#!/bin/bash

# Variables
DB_USER="mspr"
DB_PASSWORD="#123Cristaline"
DB_NAME="db_mspr"
BACKUP_DIR="/home/mspr/sauvegarde"
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
0 */2 * * * /chemin/vers/le/dossier/de/sauvegarde/backup_db.sh
