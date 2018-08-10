1. 卸载MySQL
apt-get autoremove --purge mysql-server-5.0
apt-get remove mysql-server
apt-get autoremove mysql-server
apt-get remove mysql-common

dpkg -l | grep ^rc | awk '{print $2}' | sudo xargs dpkg -P

2. 安装MySQL
apt-get install mysql-server mysql-client

3. 查看MySQL进程
netstat -tap | grep mysql
pgrep mysqld

4. MySQL管理
/etc/init.d/mysql [start | restart | stop | status]
service mysql [start | restart | stop | status]
[start | restart | stop | status] mysql

5. 登录MySQL
mysql -uroot -proot

6. 修改MySQL的管理员密码
update mysql.user set password=PASSWORD('txazoza1218') where user='root';

/etc/init.d/mysql stop
mysqld_safe --user=mysql --skip-grant-tables --skip-networking
mysql -u root mysql
update user set password=PASSWORD('txazoza1218') where user='root';
quit
/etc/init.d/mysql restart

7. 取消MySQL本地监听
vi /etc/mysql/my.cnf

#bind-address = 127.0.0.1
或
bind-address = 112.124.6.220

8. MySQL权限设置
GRANT ALL PRIVILEGES ON *.* TO root@localhost IDENTIFIED BY "root";
GRANT ALL PRIVILEGES ON stat.* TO stat@183.62.134.100 IDENTIFIED BY "stat";
GRANT ALL PRIVILEGES ON txazo.* TO txazo@183.62.134.100 IDENTIFIED BY "txazo";

GRANT ALL PRIVILEGES ON blog.* TO blog@101.106.118.49 IDENTIFIED BY "blog";
GRANT ALL PRIVILEGES ON blog.* TO blog@183.62.134.100 IDENTIFIED BY "blog";

GRANT ALL PRIVILEGES ON test.* TO txazo@183.62.134.100 IDENTIFIED BY "txazo";

GRANT ALL PRIVILEGES ON blog.* TO blog@localhost IDENTIFIED BY "blog";
GRANT ALL PRIVILEGES ON blog.* TO blog@112.124.6.220 IDENTIFIED BY "blog";

GRANT ALL PRIVILEGES ON roc.* TO roc@localhost IDENTIFIED BY "roc";
GRANT ALL PRIVILEGES ON weixin.* TO roc@localhost IDENTIFIED BY "roc";