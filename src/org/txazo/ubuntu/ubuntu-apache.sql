1. 安装Apache2
apt-get install apache2

2. Apache2启动关闭
/etc/init.d/apache2 [start | stop | status | restart]
service apache2 [start | stop | status | restart]
killall apache2

3. Apache2配置
/etc/apache2/apache2.conf
/etc/apache2/mods-enabled/
/etc/apache2/httpd.conf
/etc/apache2/ports.conf
/etc/apache2/conf.d/
/etc/apache2/sites-enabled/

4. Apache2集成SVN
apt-get install libapache2-svn

vi /etc/apache2/mods-available/dav_svn.conf

<Location /svn/BlogSite>
DAV svn
SVNPath /home/svn/BlogSite
AuthType Basic
AuthName "BlogSite"
AuthUserFile /etc/subversion/passwd
Require valid-user
</Location>

htpasswd -c /etc/subversion/passwd apache
htpasswd -c /etc/subversion/passwd others

http://112.124.6.220/svn/BlogSite

