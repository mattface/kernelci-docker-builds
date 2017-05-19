#!/bin/bash


sed -i "s/BUILDSLAVEPASSWORD/${SSH_PASSWORD}/g" /expect_pw.sh
/expect_pw.sh
