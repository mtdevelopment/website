#!/bin/bash - 
#===============================================================================
#
#          FILE: s3deploy.sh
# 
#         USAGE: ./s3deploy.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: YOUR NAME (), 
#  ORGANIZATION: 
#       CREATED: 11/15/2015 15:21
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

s3cmd sync --config ~/.s3cfg-omt --exclude 'scripts/*' --exclude '.git/*' ../ s3://omt.tech/
