# ********************< mv >********************
# ���������ƶ��ļ�

# �������ļ�
mv oldname newname

# ������Ŀ¼
# Ŀ��Ŀ¼������
mv data dataTmp
# Ŀ��Ŀ¼����(�ƶ��ļ�)
mv data/* dataTmp

# �ƶ��ļ�
# �ļ� -> �ϼ�Ŀ¼
mv data.tmp /home/txazo
# �ļ� -> �ļ�
mv data.tmp /home/txazo/data.tmp

# Ŀ¼ -> �ϼ�Ŀ¼
mv data /home/txazo
# Ŀ¼ -> Ŀ¼(/home/txazo/data������)
mv data/* /home/txazo/data

# ��д�ļ�ǰ������ʾ
mv -i file1 file2

# ��д�ļ�ǰ����ʾ
mv -f file1 file2