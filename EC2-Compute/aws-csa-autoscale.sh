#!/bin/bash
yum install httpd -y
yum update -y
aws s3 cp s3://YOURBUCKETNAMEHERE/index.html /var/www/html/ --recursive --region YOURREGIONXX-YYYY-n 
service httpd start
chkconfig httpd on
