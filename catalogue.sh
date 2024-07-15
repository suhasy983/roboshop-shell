source common.sh
cp catalogue.service /etc/systemd/system/catalogue.service
cp mongo.repo /etc/yum.repos.d/mongo.repo
useradd roboshop

NODEJS

mkdir /app
curl -o /tmp/catalogue.zip https://roboshop-artifacts.s3.amazonaws.com/catalogue-v3.zip

cd /app
unzip /tmp/catalogue.zip

cd /app
npm install
systemctl daemon-reload
systemctl enable catalogue
systemctl start catalogue

dnf install mongodb-mongosh -y

mongosh --host localhost </app/db/master-data.js