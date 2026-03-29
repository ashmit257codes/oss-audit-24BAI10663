#!/bin/bash
# Script 5: Open Source Manifesto Generator

echo "Answer the following questions:"

read -p "1. Tool you use daily: " TOOL
read -p "2. Meaning of freedom: " FREEDOM
read -p "3. What will you build: " BUILD

DATE=$(date)
OUTPUT="manifesto.txt"

echo "--------------------------------" > $OUTPUT
echo "Open Source Manifesto" >> $OUTPUT
echo "--------------------------------" >> $OUTPUT
echo "On $DATE," >> $OUTPUT
echo "I use $TOOL daily." >> $OUTPUT
echo "To me, freedom means $FREEDOM." >> $OUTPUT
echo "In the future, I want to build $BUILD." >> $OUTPUT
echo "--------------------------------" >> $OUTPUT

echo "Manifesto saved in $OUTPUT"
echo ""
cat $OUTPUT
