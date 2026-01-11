#!/bin/bash
yum install -y httpd
cp index.html /var/www/html/
systemctl start httpd
systemctl enable httpd
curl -f http://localhost || exit 1
echo "✅ Apache Deployed Successfully!"

