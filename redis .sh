dnf module disable redis -y
dnf module enable redis:7 -y
dnf install redis -y
# Update listen address from 127.0.0.1 to 0.0.0.0 in /etc/redis/redis.conf
systemctl enable redis
systemctl start redis