#!/bin/bash


if [ -z "${SSH_PASSWORD}" ]; then
	echo "=> Please pass your SSH_PASSWORD environment variable"
	exit 1
fi

sed -i "s/BUILDSLAVEPASSWORD/${SSH_PASSWORD}/g" /expect_pw.sh
/expect_pw.sh
