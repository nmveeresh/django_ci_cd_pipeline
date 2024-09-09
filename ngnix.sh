#! bin/bash

sudo cp -rf app.conf /etc/nginx/site-available/app
chmod 710 /var/lib/jenkins/workspace/django_ci_cd

sudo ln -s /etc/nginx/site-available/app /etc/nginx/site-enabled

sudo ngnix -t

sudo systemctl start nginx
sudo systemctl enable nginx

echo "nginx has been started"

sudo systemctl status nginx