 #!/bin/bash
sudo yum -y update
sudo yum -y install httpd
sudo systemctl start httpd.service
sudo systemctl enable httpd.service
echo "Hello World!" > /var/www/html/index.html