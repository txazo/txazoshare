last  # 列出用户登录记录

# 最近的10条记录
last -10

# 指定登录日志文件
last -f /var/log/wtmp

# 不显示IP列
last -R

# 用户为txazo的记录
last txazo

# 虚拟终端为pts/1的记录
last tty pts/1

last -5 -f /var/log/wtmp -R txazo
last -5 -f /var/log/wtmp -R tty pts/1