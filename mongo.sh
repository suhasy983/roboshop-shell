cp mongo.repo /etc/yum.repos.d/mongo.repo
dnf install mongodb-org -y
# update config file later /etc/mongod.conf
systemctl enable mongod
systemctl restart mongod
