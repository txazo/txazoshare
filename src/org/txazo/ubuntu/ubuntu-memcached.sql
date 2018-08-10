1. 安装libevent
1) 下载libevent
wget https://github.com/downloads/libevent/libevent/libevent-2.0.21-stable.tar.gz
2) 解压libevent
tar zxvf libevent-2.0.21-stable.tar.gz -C /usr/local
cd /usr/local
mv libevent-2.0.21-stable libevent
3) 编译安装libevent
cd /usr/local/libevent
./configure --prefix=/usr/local/libevent
make
make install

2. 安装memcached
1) 下载
wget http://memcached.googlecode.com/files/memcached-1.4.15.tar.gz
2) 解压
tar zxvf memcached-1.4.15.tar.gz -C /usr/local
cd /usr/local
mv memcached-1.4.15 memcached
3) 编译安装
cd /usr/local/memcached
./configure --prefix=/usr/local/memcached --with-libevent=/usr/local/libevent
make
make install
4) 启动
./memcached -d -m 10 -u root -l 127.0.0.1 -p 9999
./memcached -d -m 10 -u root -l 112.124.6.220 -p 9998

apt-get install memcached

memcached -d -m 10 -u root -l 127.0.0.1 -p 9999
memcached -d -m 10 -u root -l 112.124.6.220 -p 9998

ps aux | grep memcache
root 10434 0.0 0.1 323228 916 ? Ssl 11:21 0:00 ./memcached -d -m 10 -u root -l 127.0.0.1 -p 9999
root 10449 0.0 0.1 323228 912 ? Ssl 11:26 0:00 ./memcached -d -m 10 -u root -l 112.124.6.220 -p 9998
kill -9 10434

telnet 112.124.6.220 9998
stats

[set | add | replace] key 0 0 length
value

delete key seconds

flush_all

quit
get key