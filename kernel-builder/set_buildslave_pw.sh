#!/bin/bash


if [ -z "${SSH_PASSWORD}" ]; then
	echo "=> Please pass your SSH_PASSWORD environment variable"
	exit 1
fi
if [ -z "${API_URL}" ]; then
	echo "=> Please pass your API_URL environment variable"
	exit 1
fi
if [ -z "${API_TOKEN}" ]; then
	echo "=> Please pass your API_TOKEN environment variable"
	exit 1
fi


cat > /home/buildslave/.buildpy.cfg << EOF
[production]
url = ${API_URL}
token = ${API_TOKEN}
EOF

sed -i "s/BUILDSLAVEPASSWORD/${SSH_PASSWORD}/g" /expect_pw.sh
/expect_pw.sh
