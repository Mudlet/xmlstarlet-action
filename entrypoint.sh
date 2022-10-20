#!/bin/sh
set -e

output=$(xmlstarlet $@)
echo "xmlstarlet_result=${output}" >> $GITHUB_OUTPUT
