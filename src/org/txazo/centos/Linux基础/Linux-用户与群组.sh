# ********************< UID与GID >********************
# UID(User ID)   用户ID
# GID(Group ID)  群组ID

# ********************< /etc/passwd >********************
# username:x:UID:GID:discription:home:shell
# root:x:0:0:root:/root:/bin/bash
# mail:x:8:12:mail:/var/spool/mail:/sbin/nologin
# txazo:x:1000:1000:txazo,,,:/home/txazo:/bin/bash

# UID
# 0          超级用户
# 1~499      系统用户(/sbin/nologin)
# 500~65535  普通用户

# ********************< /etc/shadow >********************
# username:passwd:::::::
# root:$6$4Rq5JqCS$9XEjcUzecnzJxsXovaFgdDOPRtZKyhzWlGeYRHGKf7e.oxzzbXMhB8VuMcKLoChUUJllaMsPMzO/2x3VSxx99.:15986:0:99999:7:::
# mail:*:15513:0:99999:7:::
# txazo:$6$KsIrQ9Fg$XKpQC8qSVvg8k5YtM4szrA5NpGvATEg7jKnOkQUG2JEfc.Dde1t2BXS4Z.H/fvdRX7MEXlzBik8QmhoB94ZJ2/:15986:0:99999:7:::

# ********************< /etc/group >********************
# groupname:gpasswd:GID:usernames
# root:x:0:
# mail:x:12:mail,postfix
# txazo:x:1000:

# 初始群组        /etc/passwd中指定的群组
# 有效群组        groups第一个输出的群组(创建文件时使用有效群组)

# ********************< /etc/gshadow >********************
# 主要用来创建群组管理员

# useradd参考档
# /etc/default/useradd
useradd -D
# GROUP=100
# HOME=/home               用户Home目录的基准目录
# INACTIVE=-1
# EXPIRE=
# SHELL=/bin/bash
# SKEL=/etc/skel           用户Home目录的参考基准目录(复制/etc/skel来创建Home目录)
# CREATE_MAIL_SPOOL=yes    创建用户的mailbox(/var/spool/mail目录下)

# /etc/login.defs
# MAIL_DIR        /var/spool/mail    默认邮件目录
# PASS_MAX_DAYS   99999              
# PASS_MIN_DAYS   0                   
# PASS_MIN_LEN    5                  
# PASS_WARN_AGE   7                  
# UID_MIN                   500      最小UID
# UID_MAX                 60000      最大UID
# GID_MIN                   500      最小GID
# GID_MAX                 60000      最大GID
# CREATE_HOME     yes                是否默认创建Home目录
# UMASK           077                用户Home目录创建的umask，权限为700
# USERGROUPS_ENAB yes                userdel删除时，是否删除初始群组
# ENCRYPT_METHOD SHA512              口令是否经过MD5加密