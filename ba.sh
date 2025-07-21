
#!/bin/sh

# variables
SOURCE_DIR="/home/zizo/Desktop/backup"
LOG_FILE="backup.log"
REMOTE_HOST="zeyad@192.168.1.26"
REMOTE_DIR="/home/zeyad/Desktop/zezo"

# functions
perform_backup(){
     rsync -e "ssh -o PreferredAuthentications=password -o PubkeyAuthentication=no -o IdentitiesOnly=yes" -avz "$SOURCE_DIR" "${REMOTE_HOST}:${REMOTE_DIR}" >> "$LOG_FILE" 2>&1

    if [ $? -eq 0 ]; then
        echo "tmm ya b4a4 : $(date)" >> "$LOG_FILE"
    else
        echo "m4 tmm 5ales : $(date)" >> "$LOG_FILE"
    fi
}

# run the backup
perform_backup
