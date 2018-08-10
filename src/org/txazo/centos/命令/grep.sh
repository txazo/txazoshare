# ********************< grep >********************
# �ı�����
# ��ʽ��grep [OPTION]... PATTERN [FILE]...
# ���ļ�����ʱ���׻���ʾ�ļ��������ļ��������ײ���ʾ�ļ���

# ������ʽ

^          # ƥ������
$          # ƥ����β
\<         # ƥ�䵥����
\>         # ƥ�䵥��β

.          # ƥ�䵥���ַ�
\          # ת���

\?          # ƥ��0��1��
*          # ƥ��0����
\+          # ƥ��һ������

\{N\}      # ƥ��N��
\{N,\}     # ����ƥ��N��
\{,M\}     # ���ƥ��M��
\{N,M\}    # ƥ��N��M��

\|         # ƥ������֮һ
\()\       # �洢ƥ�䵽���ַ�
\(\|)\     # ƥ������֮һ���洢

[]         # �ַ���
[-]        # �ַ���Χ
[^]        # ����ָ���ַ���Χ���ַ�

\t         # �Ʊ��
\n         # ���з�
\s         # �ո�(����)

# ƥ��������ʽ
grep -e

# ƥ����չ������ʽ
grep -E

# �ݹ�������Ŀ¼
grep -r 'localhost' /usr/local/nginx

# ֻ��ʾƥ����ļ�
grep -l -r 'localhost' /usr/local/nginx

# ������ʽ�а���-
grep --help | grep -e '--version'
grep --help | grep '\-\-version'

# ���ҵ���(����ǰ�����ĸ������)
grep -w 'localhost' /usr/local/nginx/conf/nginx.conf
grep -e '\<localhost\>' /usr/local/nginx/conf/nginx.conf

# ͬʱ�������������ļ�
cat /etc/passwd | grep 'txazo' - /etc/group
# (standard input):txazo:x:1000:1000:txazo:/home/txazo:/bin/bash
# /etc/group:txazo:x:1000:

# ��������(���9���ַ��Ļ�������)
grep -e '\(.\?\)\(.\?\)\(.\?\)\(.\?\).\?\4\3\2\1' /etc/passwd

# ֻ���ƥ�������
grep -c '/bin/bash' /etc/passwd

# ��ʾƥ��pattern1��pattern2����
grep -e 'txazo\|hello' data.tmp

# ��ʾƥ��pattern1��pattern2����
grep 'txazo' data.tmp | grep 'hello'

# �����ִ�Сд
grep -i 'root' /etc/passwd

# ���Ҳ�ƥ�����
grep -v 'root' /etc/passwd

# ����к�
grep -n 'root' /etc/passwd

# ƥ��ؼ��ʼ�����ɫ
grep --color=auto 'root' /etc/passwd