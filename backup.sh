ubuntu@ubuntu:~$ #!/bin/bash

# Purpose: Backup a folder with timestamp
# Author: Siddhi
# Date: 16-11-2025

SOURCE_DIR="/home/ubuntu/foldername"      # existing folder you want to backup
BACKUP_DIR="/home/ubuntu/backup"          # location where backup will be stored 

TIME=$(date +"%Y-%m-%d_%H-%M-%S")
DEST="$BACKUP_DIR/backup_$TIME"

mkdir -p "$BACKUP_DIR"                    # create backup folder if missing

cp -r "$SOURCE_DIR" "$DEST"               # copy the folder

echo "Backup completed and saved in $DEST"

