# ********************< cat >********************
# �����ļ����׼���뵽��׼���
# EOF�������ݵ�����׼���봫������

# ����ļ�����
cat /dev/null > data.tmp

# ��ʾ�ļ�����
cat data.tmp

# �������ļ�����д�ļ�
cat > data.tmp

cat > data.tmp << EOF
HelloWorld
Welcome to Beijing
EOF

# �������ļ���׷���ļ�
cat >> data.tmp

cat >> data.tmp << EOF
HelloWorld
Welcome to Beijing
EOF

# �ϲ��ļ�
cat 1.tmp 2.tmp > 3.tmp