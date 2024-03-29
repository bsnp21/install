





#AWS create instances
# Ubuntu Server 20.04 LTS (HVM), SSD Volume Type - ami-0885b1f6bd170450c (64-bit x86) / ami-054e49cb26c2fd312 (64-bit Arm)
# 6. Configure Security Group
#    Inbound rules for sg-0cccdf3b13fe95ce6 (Selected security groups: sg-0cccdf3b13fe95ce6)
#    Type Protocol  Port Range  Source  Description
#    All TCP TCP  0 - 65535 0.0.0.0/0
#    All TCP   TCP 0 - 65535   ::/0
#    SSH


sudo apt-get update

sudo apt-get install apache2
sudo ufw app list
#  Output
#  Available applications:
#    Apache
#    Apache Full
#    Apache Secure
#    OpenSSH
sudo ufw status
sudo ufw allow 'Apache'
sudo systemctl status apache2
##  ● apache2.service - The Apache HTTP Server
##       Loaded: loaded (/lib/systemd/system/apache2.service; enabled; vendor preset: enabled)
##       Active: active (running) since Thu 2020-12-03 19:13:22 UTC; 3min 46s ago
##         Docs: https://httpd.apache.org/docs/2.4/
##     Main PID: 1671 (apache2)
##        Tasks: 55 (limit: 1164)
##       Memory: 5.2M
##       CGroup: /system.slice/apache2.service
##               ├─1671 /usr/sbin/apache2 -k start
##               ├─1673 /usr/sbin/apache2 -k start
##               └─1674 /usr/sbin/apache2 -k start
##  
##  Dec 03 19:13:22 ip-172-31-59-85 systemd[1]: Starting The Apache HTTP Server...
##  Dec 03 19:13:22 ip-172-31-59-85 systemd[1]: Started The Apache HTTP Server.



# https://techexpert.tips/apache/enable-https-apache/
# mkdir /etc/apache2/certificate
# cd /etc/apache2/certificate
# openssl req -new -newkey rsa:4096 -x509 -sha256 -days 365 -nodes -out apache-certificate.crt -keyout apache.key