#!/bin/bash

LOGFILE="/home/james/logs/disk_report.log"

{
    echo "=================================================="
    echo "Disk Usage Report"
    echo "Generated: $(date '+%Y-%m-%d %H:%M:%S')"
    echo "Hostname: $(hostname)"
    echo "Executed By: $(whoami)"
    echo "=================================================="
    echo

    echo "[Disk Space Utilization]"
    df -h
    echo

    echo "[Inode Utilization]"
    df -i
    echo

    echo "[Filesystems Above 80% Utilization]"
    df -h | awk 'NR==1 || $5+0 >= 80'
    echo

    echo "[Top 10 Largest Directories]"
    du -sh "$HOME"/* 2>/dev/null | sort -hr | head -10
    echo

    echo "Report completed successfully."
    echo

} 2>&1 | tee -a "$LOGFILE"

