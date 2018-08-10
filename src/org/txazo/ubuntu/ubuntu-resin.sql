1. 安装build-essential
# Ubuntu下编译必须
apt-get install build-essential

2. 下载Resin
wget http://www.caucho.com/download/resin-4.0.36.tar.gz

3. 解压Resin
tar zxvf /soft/packages/resin-4.0.36.tar.gz -C /usr/local
mv resin-4.0.36

4. 安装Resin
cd resin
./configure --prefix=/usr/local/resin --with-resin-root=/usr/local/resin/www --with-resin-conf=/usr/local/resin/conf --with-resin-log=/usr/local/resin/log		
make
make install

5. 启动Resin
./usr/local/resin/bin/resin.sh [status | stop | start | restart]
service resin [status | stop | start | restart]

6. 配置Resin端口
vi conf/resin.properties

app.http          : 80
web.http          : 80

iptables -A INPUT -p tcp --dport 80 -j ACCEPT
iptables -A OUTPUT -p tcp --sport 80 -j ACCEPT

iptables -I INPUT 5 -p tcp --dport 6600 -j ACCEPT
iptables -A OUTPUT -p tcp --dport 6600 -j ACCEPT