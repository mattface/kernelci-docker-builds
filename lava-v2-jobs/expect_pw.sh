#!/usr/bin/expect
spawn passwd buildslave
expect "Enter new UNIX password:"
send "BUILDSLAVEPASSWORD\r"
expect "Retype new UNIX password:"
send "BUILDSLAVEPASSWORD\r"
expect "passwd: password updated successfully"
interact
