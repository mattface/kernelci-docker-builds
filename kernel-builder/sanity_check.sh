#!/bin/bash


if [ -z "${SSH_PASSWORD}" ]; then
	echo "=> Please pass your SSH_PASSWORD environment variable"
	exit 1
fi
