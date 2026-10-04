#!/bin/bash
# Made by James Goebel
# CVNP1601 Week 6
# Backup /etc and record each major step
# This script is designed to fail clearly if the backup does not succeed

BACKUP_DIR="/var/backups/etc"
LOG="/var/log/backup_etc.log"
TIMESTAMP="$(date +%Y%m%d_%H%M%S)"
ARCHIVE="$BACKUP_DIR/etc_$TIMESTAMP.tar.gz"

# Create a timestamped log entry and show it in the terminal
log() {
    echo "$(date '+%Y-%m-%d %H:%M:%S') - $1" | tee -a "$LOG"
}

# Create the backup directory if it does not already exist
mkdir -p "$BACKUP_DIR"

# Start the backup process
log "Starting /etc backup"

# Create the archive and check tar's own exit status directly
if tar -czf "$ARCHIVE" /etc; then
    log "Backup succeeded: $ARCHIVE"
else
    log "ERROR: Backup failed"
    exit 1
fi

# Report the completed backup path
log "Backup completed: $ARCHIVE"
