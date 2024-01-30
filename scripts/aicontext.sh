#!/bin/bash
LASTOUTPUTLINES=50

echo "shell: $SHELL"
echo "uname: `uname`"
echo "pwd: `pwd`"
echo ""

echo "The last command I executed was (including shell prompt):"
echo '```'
# SCRIPT contains the current shell log. Reverse with tail -r. 
tail -r $SCRIPT | grep --max-count 2 "🦄" | tail -n 1
echo '```'
echo ""

echo "$LASTOUTPUTLINES last lines of output of last executed command:"
echo '```'
tail -r $SCRIPT | grep --max-count 2 "🦄" -B $LASTOUTPUTLINES | grep --invert-match "🦄" | tail -r
echo '```'
echo ""
