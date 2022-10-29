              #!/bin/bash
              yum update -y
              yum install -y httpd
              echo "Isnt Jintae." > /var/www/html/index.html
              systemctl restart httpd