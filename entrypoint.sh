#!/bin/bash
# Author: Jonathan Meyer <jon@gisjedi.com>
# Source: https://github.com/gisjedi/gosu-entrypoint
# Version: master

set -eo


# If GOSU_USER was 0:0 exec command passed in args without gosu (assume already root)
exec "$@"
