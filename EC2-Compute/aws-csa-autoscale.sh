#!/bin/bash

yum update -y
yum install -y httpd
echo '<h1>Hello World</h1>' > /var/www/html/index.html
echo '<h1>I am Healthy</h1>' > /var/www/html/health.html
systemctl start httpd
systemctl enable httpd