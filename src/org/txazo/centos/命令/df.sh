# ********************< df >********************
# �ļ�ϵͳ�Ĵ���ʹ�����
# Ĭ����KBΪ��λ��ʾ

# �г��ļ�ϵͳ�Ĵ���ʹ�����
df
# Filesystem           1K-blocks      Used Available Use% Mounted on
# /dev/xvda1            20641404   1778544  17814336  10% /
# tmpfs                   250336         0    250336   0% /dev/shm

# ��ʾ���з���
df -a
# Filesystem           1K-blocks      Used Available Use% Mounted on
# /dev/xvda1            20641404   1778544  17814336  10% /
# proc                         0         0         0   -  /proc
# sysfs                        0         0         0   -  /sys
# devpts                       0         0         0   -  /dev/pts
# tmpfs                   250336         0    250336   0% /dev/shm
# xenfs                        0         0         0   -  /proc/xen
# none                         0         0         0   -  /proc/sys/fs/binfmt_misc

# �Ը��Ѷ��ķ�ʽ��ʾ������1024ת��
df -h
# Filesystem            Size  Used Avail Use% Mounted on
# /dev/xvda1             20G  1.7G   17G  10% /
# tmpfs                 245M     0  245M   0% /dev/shm

# �Ը��Ѷ��ķ�ʽ��ʾ������1000ת��
df -H
# Filesystem             Size   Used  Avail Use% Mounted on
# /dev/xvda1              22G   1.9G    19G  10% /
# tmpfs                  257M      0   257M   0% /dev/shm

# �г��ļ�ϵͳ������
df -T
# Filesystem    Type   1K-blocks      Used Available Use% Mounted on
# /dev/xvda1    ext4    20641404   1778544  17814336  10% /
# tmpfs        tmpfs      250336         0    250336   0% /dev/shm

# ��ʾָ���ļ�ϵͳ���͵Ĵ���
df -t ext4
# Filesystem           1K-blocks      Used Available Use% Mounted on
# /dev/xvda1            20641404   1778544  17814336  10% /

# ��KBΪ��λ��ʾ
df -k
# Filesystem           1K-blocks      Used Available Use% Mounted on
# /dev/xvda1            20641404   1778544  17814336  10% /
# tmpfs                   250336         0    250336   0% /dev/shm