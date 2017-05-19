#!/bin/bash

set -e
/sanity_check.sh
/ansible-myself.sh
/set_buildslave_pw.sh
exec /usr/bin/supervisord -c /supervisord.conf
