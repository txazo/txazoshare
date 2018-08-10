service

service cron
[sudo] service cmd [stop | start | restart | status]

service --status-all  # 所有service服务的状态

# Ubuntu
file /usr/sbin/service  # service命令
/etc/init.d/*  # 服务启动脚本

service mysql [stop | start | restart | status]
/etc/init.d/mysql [stop | start | restart | status]

/etc/services  # 服务与端口的对应
cat /etc/services | grep mysql  # 查看MySQL端口