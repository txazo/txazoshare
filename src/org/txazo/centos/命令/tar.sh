# ********************< tar >********************
# ������ѹ����ѹ��

# ���(tar��)
tar -cvf data.tar data

# ���(tar��)
tar -xvf data.tar

# �鿴��(tar��)
tar -tvf data.tar

# ѹ��(tar.gz��)
tar -zcvf data.tar.gz data

# ��ѹ(tar.gz��)
tar -zxvf data.tar.gz

# �鿴ѹ����(tar.gz��)
tar -ztvf data.tar.gz

# ��ѹ�����ļ�
tar -zxvf data.tar.gz data/log

# ��ѹ��ָ��Ŀ¼��
tar -zxvf data.tar.gz -C /home/txazo/www

# ѹ��ʱ�ų������ļ�
tar --exclude=data/www -zcvf data.tar.gz data

# ����ԭ�ļ����ļ�Ȩ�޺�����
tar -zcvpf data.tar.gz data