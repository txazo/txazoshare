# ********************< Nginx >********************
# Nginx安装目录：/usr/local/nginx

# 启动Nginx
/usr/local/nginx/sbin/nginx

# 查询Nginx的主进程号
# master process进程
ps -ef | grep nginx
/usr/local/nginx/logs/nginx.pid

# 停止Nginx
kill -QUIT 主进程号
kill -TERM 主进程号
pkill -9 nginx

# 卸载Nginx
rm -rf /usr/local/nginx