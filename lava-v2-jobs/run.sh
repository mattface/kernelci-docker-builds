#!/bin/bash

set -e

/set_buildslave_pw.sh
exec /usr/bin/supervisord -c /supervisord.conf
