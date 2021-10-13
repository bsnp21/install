#/bin/





cp -fv 000-default.conf.after /etc/apache2/sites-enabled/000-default.conf

cp -fv apache2.conf /etc/apache2/apache2.conf

mkdir /etc/apache2/certificate
cd /etc/apache2/certificate
openssl req -new -newkey rsa:4096 -x509 -sha256 -days 365 -nodes -out apache-certificate.crt -keyout apache.key




