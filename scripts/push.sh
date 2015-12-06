#!/bin/bash
aws s3 sync page s3://$DEPLOY_BUCKET/ --acl public-read --cache-control max-age=60
