#!/bin/bash
yum install httpd -y
yum update -y
aws s3 cp s3://awsclassdemokasun /var/www/html/ --recursive
service httpd start
chkconfig httpd on
