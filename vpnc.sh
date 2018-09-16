#!/usr/bin/expect -f
set timeout -1

# set variables
set server <server>
set username <username>
set password <password>

spawn openconnect $server

# Look for yes prompt
expect "Enter 'yes' to accept, 'no' to abort; anything else to view:"
send -- "yes\r"
# Look for username prompt
expect "Username:"
send -- "$username\r"
# Look for password prompt
expect "Password:"
send -- "$password\r"

expect eof



