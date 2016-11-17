## FTP
```
sudo apt-get install vsftpd
sudo nano /etc/vsftpd.conf
ustawić >>> write_enable=YES
sudo service vsftpd start
```
## Instalacja Node.js
```
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
sudo apt-get install -y nodejs
sudo reboot
node -v
```
## MySQL
```
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install mysql-server

hasło roota mysql: my_secret_password

mysql -p -u root 
mysql> CREATE USER 'sa'@'%' IDENTIFIED BY 'my_secret_password';
mysql> GRANT ALL PRIVILEGES ON *.* to 'sa'@'my-poi' WITH GRANT OPTION;
mysql> CREATE USER 'sa'@'192.168.1.??' IDENTIFIED BY 'my_secret_password';
mysql> GRANT ALL PRIVILEGES ON *.* to 'sa'@'192.168.1.??' WITH GRANT OPTION;
mysql> FLUSH PRIVILEGES;
mysql> SHOW GRANTS FOR 'sa'@'192.168.1.??';

mysql> exit

sudo nano /etc/mysql/mysql.conf.d/mysqld.cnf
[mysqld]
bind-address            = 192.168.1.??
na końcu
character-set-server    = utf8
collation-server        = utf8_unicode_ci

sudo service mysql restart
```
Sprawdzenie
```
systemctl status mysql.service
```
## SSH
```
Ustaw zewnętrzny port na np. 5022 (chodzi o pominięcie zakresu sprawdzanego przez boty usiłujące "nadgryźć" serwer)

sudo nano /etc/ssh/sshd_config
# Authentication:
PermitRootLogin no
AllowUsers foo foo1 foo2

PasswordAuthentication yes
Subsystem sftp internal-sftp
ForceCommand internal-sftp

sudo /etc/init.d/ssh restart
```