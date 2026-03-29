#!/bin/bash
# Script 3: Disk and Permission Auditor

DIRS=("." "/tmp" "/usr" "/home")

echo "Directory Audit Report"
echo "----------------------"

for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        PERMS=$(ls -ld "$DIR" 2>/dev/null | awk '{print $1, $3, $4}')
        echo "$DIR => Permissions: $PERMS"
    else
        echo "$DIR does not exist"
    fi
done
