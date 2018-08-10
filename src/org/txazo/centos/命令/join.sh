# ********************< join >********************
# �ϲ������ļ�
# join֮ǰҪ��sort
# joinǰ�����ָ����������ָ���
# joinĬ���Կո�(һ������)Ϊ����ָ�����һ���ո�Ϊ����ָ���

cat file1
# 1
# 2

cat file2
# 2
# 3

join file1 file2
# 2

# ����file1��û����ͬ��λ����
join -a1 file1 file2
# 1
# 2

# ����file1��file2��û����ͬ��λ����
join -a1 -a2 file1 file2
# 1
# 2
# 3

# ��ʾfile1��û����ͬ��λ����
join -v1 file1 file2
# 1

# �Ƚ���λʱ�����Դ�Сд
join -i file1 file2
# 2

# ָ�����ӵ���λ
join -1 1 -2 1 file1 file2
# 2

# ���������ʽ
join -o 1.1 2.1 file1 file2
# 2 2

# ��������ָ���
tabChar=`echo -e "\t"`
join -t "$tabChar" -o 1.1 2.1 file1 file2
# 2    2

# �����ж�ȡ
cat file1 | join - file2