# ********************< uniq >********************
# ȥ��(�����ظ�����)
# uniqǰһ����sort

cat data.tmp
# 1
# 1
# 2
# 2
# 2
# 3

# ȥ���ظ���
uniq data.tmp
# 1
# 2
# 3

# ͳ���ظ��г��ֵĴ���
uniq -c data.tmp
#      2 1
#      3 2
#      1 3

# ֻ��ʾ�ظ���
uniq -d data.tmp
# 1
# 2

# ֻ��ʾ���ظ���
uniq -u data.tmp
# 3

# ��ʾ�����ظ���
uniq -D data.tmp
# 1
# 1
# 2
# 2
# 2

cat data.tmp
# 1 dog
# 2 dog
# 3 fog
# 4 dog
# 5 cat
# 6 cat

# ����ǰn���ֶ�(���ֶ�ǰ�Ŀհ�)������ǰm���ַ�(�����ֶ�ǰ�Ŀհ�)
uniq -f 1 -s 2 -c data.tmp
#      4 1 dog
#      2 5 cat