# ********************< netstat >********************
# ��ʾ������Ϣ

netstat -a        # �г���������״̬
netstat -t        # ���г�TCP������״̬
netstat -u        # ���г�UDP������״̬
netstat -u        # ���г�Unix������״̬
netstat -n        # ����ʾ������������(IP)��ʾ
netstat -l        # ���г���Listen������״̬
netstat -p        # �г�PID�͵���
netstat -c        # ����ÿ�������һ��

# �г�������������״̬
netstat -a

# �г�����TCP����״̬
netstat -at

# �г�����UDP����״̬
netstat -au

# �г�������TCP��UDP����״̬
netstat -tulnp

# �г�����TCP��UDP����״̬
netstat -atunp

# ��ʾ·����Ϣ
netstat -r
netstat -rn

# ������������״̬
netstat -c 5

# �г�ָ���˿ڵ�����״̬
netstat -an | grep -e ':8080\>'