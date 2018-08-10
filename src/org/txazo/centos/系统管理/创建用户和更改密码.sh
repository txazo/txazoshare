# 创建一般用户帐号
groupadd txazo
useradd -g txazo txazo

# 更改用户帐号密码
passwd txazo

# 赋予sudo权限
visudo
root    ALL=(ALL)       ALL
txazo   ALL=NOPASSWD :  ALL

#Defaults    requiretty