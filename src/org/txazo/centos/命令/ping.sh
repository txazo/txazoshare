# ********************< ping >********************
# ����������ͨ��

# ���Ա�����Ŀ����������ͨ��
ping mail.txazo.com

# ����ping�Ĵ���
ping -c 3 mail.txazo.com
# PING mail.txazo.com (192.168.100.1) 56(84) bytes of data.
# 64 bytes from mail.txazo.com (192.168.100.1): icmp_seq=1 ttl=64 time=0.018 ms
# 64 bytes from mail.txazo.com (192.168.100.1): icmp_seq=2 ttl=64 time=0.034 ms
# 64 bytes from mail.txazo.com (192.168.100.1): icmp_seq=3 ttl=64 time=0.038 ms
# 
# --- mail.txazo.com ping statistics ---
# 3 packets transmitted, 3 received, 0% packet loss, time 1999ms
# rtt min/avg/max/mdev = 0.018/0.030/0.038/0.008 ms

# �ȴ���Ӧ�Է�����������
ping -c 1 -W 1 mail.txazo.com