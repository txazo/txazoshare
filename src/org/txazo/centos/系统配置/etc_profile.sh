# ********************< /etc/profile >********************
# 系统环境变量设置
# 对所有用户有效
# 用户第一次登录时，/etc/profile被执行
# /etc/profile -> ~/.bash_profile -> ~/.bashrc -> /etc/bashrc

# /etc/profile中设置的环境变量
# PATH                Shell寻找命令的路径
# USER                当前用户名
# LOGNAME             当前用户的登录名
# MAIL                当前用户的邮件存放目录(/var/spool/mail/$USER)
# HOSTNAME            主机名
# HISTSIZE            保存历史命令记录的条数(1000)
# HISTCONTROL         历史命令记录控制

# 添加环境变量
export NAME=value

# 修改生效
source /etc/profile