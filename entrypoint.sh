#!/bin/sh
set -e

output=$(xmlstarlet $@)
echo "::set-output name=xmlstarlet_result::${output}"
