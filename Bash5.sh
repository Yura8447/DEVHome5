#! /bin/bash

mkdir /var/folder{1,2}
cat /home/vagrant/workfile.service > /etc/systemd/system/workfile.service

systemctl daemon-reload
systemctl start workfile.service
systemctl enable workfile.service

cd /etc/cron.d
echo '* * * * 1-5 root w>>/var/log/logged-in.log' >mycron
