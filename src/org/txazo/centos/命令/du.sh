# ********************< du >********************
# �ļ���Ŀ¼�Ĵ���ʹ�����

# ��ǰĿ¼������Ŀ¼�Ĵ���ʹ�����
du
# 4       ./www/data/log
# 8       ./www/data
# 12      ./www
# 44      .

# Ŀ¼������Ŀ¼�Ĵ���ʹ�����
du /home/txazo
# 4       /home/txazo/www/data/log
# 8       /home/txazo/www/data
# 12      /home/txazo/www
# 44      /home/txazo

# �ļ��Ĵ���ʹ�����
du data.tmp
# 4       data.tmp

# ����ļ��Ĵ���ʹ�����
du data.tmp other.tmp
# 4       data.tmp
# 4       other.tmp

# ����ļ��Ĵ���ʹ����������ܺ�
du -c data.tmp other.tmp
# 4       data.tmp
# 4       other.tmp
# 8       total

# ���Ŀ¼�Ĵ���ʹ����������ܺ�
du -cs www www/data
# 12      www
# 8       www/data
# 20      total

# ��ǰĿ¼�Ĵ���ʹ������ܺ�
du -s
# 52      .

# Ŀ¼�Ĵ���ʹ������ܺ�
du -s /home/txazo
# 52      /home/txazo

# �Ը��׶��ķ�ʽ��ʾ����ʹ�����
du -h /home/txazo
# 4.0K    /home/txazo/www/data/log
# 8.0K    /home/txazo/www/data
# 12K     /home/txazo/www
# 52K     /home/txazo

# Ŀ¼��������Ŀ¼���ļ��Ĵ���ʹ�����
du -a www
# 0       www/data/log/1
# 0       www/data/log/3
# 0       www/data/log/2
# 4       www/data/log
# 8       www/data
# 12      www

# ���뵽�ڼ�����Ŀ¼
du --max-depth=1 www
# 8       www/data
# 12      www

# �ų�ָ���ļ���Ŀ¼�����С
du --exclude="log" www
# 4       www/data
# 8       www