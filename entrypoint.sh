#!/bin/sh
set -e

output=$(xmlstarlet $@)
echo "::set_output name=xmlstarlet_result::${output}"
