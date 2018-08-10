# ********************< chkconfig >********************
# ����ֹͣ�Ͳ�ѯϵͳ��������м���
# ϵͳ������7�����м���(0-6)��ÿ�����м�ֻ����һ�������ű���ֹͣ�ű�

# ��ӷ���(��/etc/rc[0-6].d�����S90resin���ӣ�ɾ��K10resin����)
chkconfig --add resin

# ɾ������(��/etc/rc[0-6].d�����K10resin���ӣ�ɾ��S90resin����)
chkconfig --del resin

# �г�����
chkconfig --list resin
resin           0:off   1:off   2:on    3:on    4:on    5:on    6:off

# �г����з���
chkconfig [--list]

# ���м����Ͽ�������(Ĭ�Ͽ���2345)
chkconfig resin on
chkconfig --level 2345 resin on

# ���м����Ϲرշ���(Ĭ�Ϲر�0123456)
chkconfig resin off
chkconfig --level 2345 resin off

# ϵͳ����ű�(/etc/init.d��)
# chkconfig: 2345 90 10

### BEGIN INIT INFO
# Provides:          resin
# Required-Start:    $remote_fs $network
# Required-Stop:     $remote_fs $network
# Default-Start:     2 3 4 5
# Default-Stop:      0 1 6
# Short-Description: The Resin Java Application Server
### END INIT INFO

# ��ӷ���
# 1. ����ű��ŵ�/etc/init.d��
# 2. chkconfig -add servicename

# Shell���жϷ����Ƿ�������(������һ�����м�Ϊon)
chkconfig resin && echo "on" || echo "off"

# Shell���жϷ�����ĳ�����м����Ƿ�������
chkconfig resin --level 4 && echo "on" || echo "off"