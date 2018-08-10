# ********************< 运行级init >********************
# 运行级init
# 当前操作系统正在运行的功能级别(0-6)

# /etc/inittab
# id:3:initdefault:

# 运行级别
0        # 停机
1        # 单用户模式
2        # 多用户模式,无网络
3        # 完全多用户模式，有网络
4        # 无用
5        # X11
6        # 重启

cd /etc
ll -d init.d rc*
# lrwxrwxrwx   1 root root   11 Oct  8 12:37 init.d -> rc.d/init.d
# lrwxrwxrwx   1 root root    7 Oct  8 12:38 rc -> rc.d/rc
# lrwxrwxrwx   1 root root   10 Oct  8 12:38 rc0.d -> rc.d/rc0.d
# lrwxrwxrwx   1 root root   10 Oct  8 12:38 rc1.d -> rc.d/rc1.d
# lrwxrwxrwx   1 root root   10 Oct  8 12:38 rc2.d -> rc.d/rc2.d
# lrwxrwxrwx   1 root root   10 Oct  8 12:38 rc3.d -> rc.d/rc3.d
# lrwxrwxrwx   1 root root   10 Oct  8 12:38 rc4.d -> rc.d/rc4.d
# lrwxrwxrwx   1 root root   10 Oct  8 12:38 rc5.d -> rc.d/rc5.d
# lrwxrwxrwx   1 root root   10 Oct  8 12:38 rc6.d -> rc.d/rc6.d
# drwxr-xr-x. 10 root root 4096 Oct  8 12:38 rc.d
# lrwxrwxrwx   1 root root   13 Oct  8 12:38 rc.local -> rc.d/rc.local
# lrwxrwxrwx   1 root root   15 Oct  8 12:38 rc.sysinit -> rc.d/rc.sysinit

cd /etc/rc.d
ll -d *
# drwxr-xr-x. 2 root root  4096 Oct 12 17:45 init.d
# -rwxr-xr-x  1 root root  2617 Aug  5 21:21 rc
# drwxr-xr-x. 2 root root  4096 Oct 12 17:45 rc0.d
# drwxr-xr-x. 2 root root  4096 Oct 12 17:45 rc1.d
# drwxr-xr-x. 2 root root  4096 Oct 12 17:45 rc2.d
# drwxr-xr-x. 2 root root  4096 Oct 12 17:45 rc3.d
# drwxr-xr-x. 2 root root  4096 Oct 12 17:45 rc4.d
# drwxr-xr-x. 2 root root  4096 Oct 12 17:45 rc5.d
# drwxr-xr-x. 2 root root  4096 Oct 12 17:45 rc6.d
# -rwxr-xr-x. 1 root root   231 Jul 30 10:56 rc.local
# -rwxr-xr-x  1 root root 19472 Aug  5 21:21 rc.sysinit

# /etc/rc.d/init.d，存放启动脚本

# /etc/rc.d/rc0.d~/etc/rc.d/rc6.d，软连接到/etc/rc.d/init.d
cd /etc/rc.d
ll rc3.d
# lrwxrwxrwx  1 root root 19 Oct  8 12:38 K10saslauthd -> ../init.d/saslauthd
# lrwxrwxrwx. 1 root root 17 Aug 15 09:34 K30postfix -> ../init.d/postfix
# lrwxrwxrwx. 1 root root 20 Aug 15 09:34 K50netconsole -> ../init.d/netconsole
# lrwxrwxrwx  1 root root 15 Oct  8 12:38 K75netfs -> ../init.d/netfs
# lrwxrwxrwx  1 root root 17 Oct  8 12:38 K75ntpdate -> ../init.d/ntpdate
# lrwxrwxrwx. 1 root root 21 Aug 15 09:34 K87restorecond -> ../init.d/restorecond
# lrwxrwxrwx. 1 root root 16 Aug 15 09:34 K88auditd -> ../init.d/auditd
# lrwxrwxrwx  1 root root 15 Oct  8 12:38 K89rdisc -> ../init.d/rdisc
# lrwxrwxrwx  1 root root 19 Oct  8 12:38 K92ip6tables -> ../init.d/ip6tables
# lrwxrwxrwx  1 root root 18 Oct  8 12:38 K92iptables -> ../init.d/iptables
# lrwxrwxrwx. 1 root root 17 Aug 15 09:34 S01sysstat -> ../init.d/sysstat
# lrwxrwxrwx  1 root root 17 Oct  8 12:38 S10network -> ../init.d/network
# lrwxrwxrwx  1 root root 16 Oct  8 14:46 S10tomcat -> ../init.d/tomcat
# lrwxrwxrwx  1 root root 17 Oct  8 12:38 S12rsyslog -> ../init.d/rsyslog
# lrwxrwxrwx  1 root root 19 Oct  8 12:38 S26udev-post -> ../init.d/udev-post
# lrwxrwxrwx  1 root root 14 Oct  8 12:38 S30nscd -> ../init.d/nscd
# lrwxrwxrwx  1 root root 14 Oct  8 12:38 S55sshd -> ../init.d/sshd
# lrwxrwxrwx  1 root root 14 Oct  8 12:38 S58ntpd -> ../init.d/ntpd
# lrwxrwxrwx. 1 root root 15 Aug 15 09:34 S90crond -> ../init.d/crond
# lrwxrwxrwx  1 root root 15 Oct 12 17:23 S90resin -> ../init.d/resin
# lrwxrwxrwx  1 root root 15 Oct 12 17:45 S90txazo -> ../init.d/txazo
# lrwxrwxrwx  1 root root 13 Oct 12 16:44 S95atd -> ../init.d/atd
# lrwxrwxrwx  1 root root 15 Oct  8 14:05 S95jexec -> ../init.d/jexec
# lrwxrwxrwx  1 root root 11 Oct  8 12:38 S99local -> ../rc.local