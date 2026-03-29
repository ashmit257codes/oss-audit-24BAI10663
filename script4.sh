#!/bin/bash
# Script 4: Log File Analyzer

LOGFILE=$1
KEYWORD="error"
COUNT=0

if [ ! -f "$LOGFILE" ]; then
    echo "File not found!"
    exit 1
fi

while read LINE
do
    echo "$LINE" | grep -i "$KEYWORD" > /dev/null
    if [ $? -eq 0 ]; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

echo "Keyword '$KEYWORD' found $COUNT times"
echo "Recent matches:"
grep -i "$KEYWORD" "$LOGFILE" | tail -3
