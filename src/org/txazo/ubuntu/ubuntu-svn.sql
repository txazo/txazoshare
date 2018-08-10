1. 安装SVN
apt-get install subversion

2. 添加用户和组
adduser svn
addgroup subversion
usermod -G subversion -a svn

3. 创建项目目录
cd /home/svn
mkdir BlogSite
chown -R svn:subversion BlogSite
chmod -R g+rws BlogSite

4. 创建SVN文件仓库
svnadmin create /home/svn/BlogSite

5. 修改文件仓库访问权限
chmod 700 /home/svn/BlogSite

6. SVN配置
1)svnserve.conf
vi /home/svn/BlogSite/conf/svnserve.conf

anon-access = none
auth-access = write
password-db = passwd
authz-db = authz
2)passwd
vi /home/svn/BlogSite/conf/passwd

txazo = txazo1218
3)authz
vi /home/svn/BlogSite/conf/authz

[groups]
admin = txazo,test

[/]
txazo = rw
@admin = rw

7. 启动SVN服务
svnserve -d -r /home/svn
svnserve -d --foreground -r /home/svn

8. 停止SVN服务
killall svnserve

9. SVN访问方式
svn://112.124.6.220/BlogSite

10. 安装Apache2
apt-get install apache2
apt-get install subversion libapache2-svn