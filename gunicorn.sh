#! bin/bash


source env/bin/activate

cd /var/lib/jenkins/workspace/django_ci_cd/app

python manage.py makemigrations
python manage.py migrate

echo "Migration done"

cd /var/lib/jenkins/workspace/django_ci_cd

sudo cp -rf gunicorn.socket /etc/systemd/system
sudo cp -rf gunicorn.service /etc/systemd/system

echo "$USER"
echo "$PWD"

sudo systemctl daemon-reload
sudo systemctl start gunicorn
sudo systemctl enable gunicorn

echo "Gunicorn has been started"

sudo systemctl status gunicorn
sudo systemctl restart gunicorn