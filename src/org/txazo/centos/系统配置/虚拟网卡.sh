# ********************< 虚拟网卡 >********************
# 虚拟网卡

cd /etc/sysconfig/network-scripts

cp ifcfg-eth0 ifcfg-eth0:0
vi ifcfg-eth0:0
# DEVICE=eth0:0
# ONBOOT=yes
# IPADDR=192.168.100.1
# NETMASK=255.255.255.0

cp ifcfg-eth0 ifcfg-eth0:1
vi ifcfg-eth0:1
# DEVICE=eth0:1
# ONBOOT=yes
# IPADDR=192.168.100.2
# NETMASK=255.255.255.0

vi /etc/hosts
# 192.168.100.1 mail.txazo.com
# 192.168.100.2 image.txazo.com

/etc/init.d/network restart