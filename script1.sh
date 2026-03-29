#!/bin/bash
# Script 1: System Identity Report

STUDENT_NAME="Ashmi"
SOFTWARE_CHOICE="Python"

KERNEL=$(uname -r)
USER_NAME="ashmi"
DATE=$(date)

echo "================================"
echo "Open Source Audit — $STUDENT_NAME"
echo "================================"
echo "Software : $SOFTWARE_CHOICE"
echo "Kernel   : $KERNEL"
echo "User     : $USER_NAME"
echo "Date     : $DATE"
echo "License  : Linux is licensed under GPL"
echo "================================"
