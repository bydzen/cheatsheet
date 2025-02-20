#!/bin/bash

declare -A cheatsheet_titles
declare -A cheatsheet_commands

# Define titles
cheatsheet_titles[1]="[find] Change directory permissions (755) recursively"
cheatsheet_titles[2]="[find] Change file permissions (644) recursively"
cheatsheet_titles[3]="[cp] Copy files recursively without preserving attributes"
cheatsheet_titles[4]="[rename] Replace lowercase space and underscore with dashes"
cheatsheet_titles[5]="[watch] See the dirty and writeback on meminfo"

# Define commands
cheatsheet_commands[1]="find <target> -type d -exec chmod 755 {} \;"
cheatsheet_commands[2]="find <target> -type f -exec chmod 644 {} \;"
cheatsheet_commands[3]="cp --recursive --no-preserve=all --verbose <source> <target>"
cheatsheet_commands[4]="rename 'y/A-Z/a-z/; s/[ _]+/-/g' <target>"
cheatsheet_commands[5]="watch -d -n1 grep -e Dirty -e Writeback /proc/meminfo"

echo "============================"
echo "  Linux Command Cheat Sheet"
echo "============================"

# Display titles only
for i in $(seq 1 ${#cheatsheet_titles[@]}); do
    echo "$i. ${cheatsheet_titles[$i]}"
done

echo "============================"

read -p "Enter a number: " choice

# Show command based on choice
if [[ -n "${cheatsheet_commands[$choice]}" ]]; then
    echo "Command for '${cheatsheet_titles[$choice]}':"
    echo "${cheatsheet_commands[$choice]}"
else
    echo "Invalid choice. Please enter a valid number."
fi
