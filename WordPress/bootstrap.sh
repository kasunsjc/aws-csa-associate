#!/bin/bash
yum update -y
aws s3 sync --delete s3://wordpress-code-kasun /var/www/html