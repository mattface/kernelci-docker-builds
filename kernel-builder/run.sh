#!/bin/bash

set -e
/set_buildslave_pw.sh
/ansible-myself.sh
exec /usr/bin/supervisord -c /supervisord.conf
