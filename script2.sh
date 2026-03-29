#!/bin/bash
# Script 2: FOSS Package Inspector

PACKAGE="python3"

if command -v $PACKAGE > /dev/null 2>&1; then
    echo "$PACKAGE is installed."
    $PACKAGE --version
else
    echo "$PACKAGE is NOT installed."
fi

case $PACKAGE in
    python3) echo "Python: a powerful and easy-to-use programming language" ;;
    git) echo "Git: version control system" ;;
    node) echo "Node.js: JavaScript runtime" ;;
    *) echo "Unknown package" ;;
esac
