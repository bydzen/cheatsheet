Linux Command Cheat Sheet Script
=================================

This script provides a simple way to look up common Linux commands. 
It displays a list of commands with descriptions and allows the user to 
select a command to see its full syntax.

Usage:
------
Run the script:

    ./cheatsheet.sh

It will display a numbered list of commands. Enter a number to see the corresponding command.

Example:
--------
1. [find] Change directory permissions (755) recursively
2. [find] Change file permissions (644) recursively
3. [cp] Copy files recursively without preserving attributes
4. [rename] Replace lowercase space and underscore with dashes
5. [watch] See the dirty and writeback on meminfo

Enter a number: 3

Output:
-------
Command for '[cp] Copy files recursively without preserving attributes':
cp --recursive --no-preserve=all --verbose <source> <target>

Notes:
------
- This script helps users quickly find useful Linux commands.
- The list of commands can be expanded by modifying the script.
- Use `<target>` and `<source>` as placeholders to be replaced with actual paths.

Requirements:
-------------
- Bash shell
- `rename` package for renaming files (install with `sudo apt install rename` if needed)
- `watch` command (pre-installed in most Linux distributions)

Enjoy using the Linux Command Cheat Sheet!
