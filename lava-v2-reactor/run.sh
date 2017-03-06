#!/bin/bash

set -e

/setup_lava_ci.sh
/install_reactobus.sh
exec /usr/bin/supervisord -c /supervisord.conf
