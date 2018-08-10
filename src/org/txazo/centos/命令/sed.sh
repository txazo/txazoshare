# ********************< sed >********************
# �ı�ת��
# ����Ϊ��λ���д���
# sed�滻�����ַ���������д��

# ƥ����вŻᱻ�������׼���
sed -n '1p' data.tmp

# ֱ���޸�Դ�ļ�����
sed -i '1d' data.tmp

# ���༭
sed -e '1d' -e '2d' data.tmp

# ɾ����(d)
sed '1d' data.tmp

# ��ʾ��(p)
sed -n '1p' data.tmp

# ������(ǰ��)(i)
sed '1i New Line' data.tmp

# ������(����)(a)
sed '1a New Line' data.tmp

# �滻��(c)
sed '1c Replace Line' data.tmp

# �滻���е�һ��ƥ���ַ���(s)
sed 's/Txazo/txazo/' data.tmp
sed '/Txazo/s//txazo/' data.tmp

# �滻��������ƥ���ַ���(s)
sed 's/Txazo/txazo/g' data.tmp
sed '/Txazo/s//txazo/g' data.tmp

# NUMBER           �к�
# FIRST~STEP       ��FIRST��ʼ��ÿ��STEP��
# $                ���һ��
# /REGEXP/         ������ʽ
# ADDR             NUMBER��/REGEXP/
# ADDR1,ADDR2      ADDR1ƥ����е�ADDR2ƥ�����
# 0,/REGEXP/       ��һ�е�REGEXPƥ�����
# ADDR,+N          ��ADDRƥ����п�ʼ��N��
# ADDR,~N          ��ADDRƥ����п�ʼ��N�ı�������
# /REGEXP/!        ��ƥ��������ʽ����

# \(\)             ����ƥ����ַ�(\n����)
# &                ���滻���ַ���

# ȥ�����пո�
sed 's/\s\+//g' data.tmp
sed '/\s\+/s///g' data.tmp

# ɾ������
sed '/^\s*$/d' data.tmp

# �������
sed '1i New Line\nNew Line\nNew Line' data.tmp
sed '1i New Line\
New Line\
New Line' data.tmp

# ����ƥ���ַ����ͱ��滻���ַ���
echo "access" | sed 's/\(acce\)ss/& \1pt/g'
# access accept