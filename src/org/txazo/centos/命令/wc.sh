# ********************< wc >********************
# ͳ���ļ��������������ַ������ֽ���

cat data.tmp
# Hello World
# txazo
# Welcome to ����

# ���� ������ �ֽ��� �ļ���
wc data.tmp
# 3  6 36 data.tmp

# ͳ������
wc -l data.tmp
# 3 data.tmp

# ͳ�Ƶ�����
wc -w data.tmp
# 6 data.tmp

# ͳ���ַ���
wc -m data.tmp
# 32 data.tmp

# ͳ���ֽ���
wc -c data.tmp
# 36 data.tmp

# ͳ����еĳ���
wc -L data.tmp
# 15 data.tmp

cat other.tmp
# This is others

# ����ļ�ͳ��
wc data.tmp other.tmp
# 3  6 36 data.tmp
# 1  3 15 other.tmp
# 4  9 51 total