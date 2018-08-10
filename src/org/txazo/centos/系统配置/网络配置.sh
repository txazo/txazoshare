# ********************< 网络配置 >********************
# 网络配置

# 查看网卡设置
ifconfig
ifconfig eth1
# eth1      Link encap:Ethernet  HWaddr 00:16:3E:00:0E:83  
#           inet addr:112.124.6.220  Bcast:112.124.7.255  Mask:255.255.252.0
#           UP BROADCAST RUNNING MULTICAST  MTU:1500  Metric:1
#           RX packets:59455 errors:0 dropped:0 overruns:0 frame:0
#           TX packets:1962 errors:0 dropped:0 overruns:0 carrier:0
#           collisions:0 txqueuelen:1000 
#           RX bytes:2766573 (2.6 MiB)  TX bytes:187182 (182.7 KiB)
#           Interrupt:164

# 网卡设置
cat /etc/sysconfig/network-scripts/ifcfg-eth1
# DEVICE=eth1              网卡代号
# ONBOOT=yes               是否默认启动
# BOOTPROTO=static         获取IP的方式
# IPADDR=112.124.6.220     IP
# NETMASK=255.255.252.0    子网掩码

# DNS设置
cat /etc/resolv.conf
# nameserver 10.242.197.247
# nameserver 10.242.197.248

# 主机名-IP对应设置
cat /etc/hosts
# 127.0.0.1 localhost
# ::1         localhost localhost.localdomain localhost6 localhost6.localdomain6
# 10.160.15.159 txazo.com txazo

# 重启网络
/etc/init.d/network restart

# 查看路由设置
route -n
# Kernel IP routing table
# Destination     Gateway         Genmask         Flags Metric Ref    Use Iface
# 112.124.4.0     0.0.0.0         255.255.252.0   U     0      0        0 eth1
# 10.160.0.0      0.0.0.0         255.255.240.0   U     0      0        0 eth0
# 169.254.0.0     0.0.0.0         255.255.0.0     U     1002   0        0 eth0
# 169.254.0.0     0.0.0.0         255.255.0.0     U     1003   0        0 eth1
# 192.168.0.0     10.160.15.247   255.255.0.0     UG    0      0        0 eth0
# 172.16.0.0      10.160.15.247   255.240.0.0     UG    0      0        0 eth0
# 10.0.0.0        10.160.15.247   255.0.0.0       UG    0      0        0 eth0
# 0.0.0.0         112.124.7.247   0.0.0.0         UG    0      0        0 eth1

# 检查路由是否连通
ping -c 3 112.124.7.247

vi /etc/sysconfig/network-scripts/ifcfg-eth2
DEVICE=eth2
ONBOOT=yes
BOOTPROTO=static
IPADDR=192.168.0.1
NETMASK=255.255.254.0
GATEWAY=192.168.1.254
NETWORK=192.168.0.0
BROADCAST=192.168.1.255