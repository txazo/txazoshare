

# ********************< chpasswd >********************
echo "txazo:123456" | chpasswd  # 可实现批量修改用户密码
echo "txazo:123456" | chpasswd -m  # MD5加密


# ********************< chsh >********************
chsh -s /bin/bash [txazo]

# ********************< id >********************
id [txazo]

# ********************< groupadd >********************
groupadd -g 1000 groupname
groupadd -r groupname  # 创建系统群组

# ********************< groupmod >********************
groupmod -g 1001 groupname
groupmod -n newgroupname groupname

# ********************< groupdel >********************
groupdel groupname

# ********************< su >********************
su root

# ********************< sudo >********************
sudo service resin restart  # 切换为root执行
sudo -u txazo service resin restart   # 切换为txazo执行

# ********************< /etc/sudoers >********************
user      IP =(users)      cmds
root      ALL=(ALL)        ALL
%admin    ALL=(ALL)        NOPASSWD: ALL
txazo     ALL=(root)       /usr/bin/passwd
txazo     ALL=(root)       !/usr/bin/passwd  # 不可运行

# ********************< w >********************
w  # 当前所有登录用户
w txazo

# ********************< who >********************
who  # 当前所有登录用户
who am i   # 当前登录用户(我)

# ********************< lastlog >********************
lastlog  # 每个帐号的最近登录时间
lastlog -u

# ********************< pwck >********************
pwck  # 检查用户Home目录是否存在