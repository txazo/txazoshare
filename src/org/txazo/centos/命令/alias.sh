# ********************< alias >********************
# ����ָ��ı���
# �ɱ༭/etc/profile��~/.bashrc����ָ��ı���

# ��ʾ����ָ��ı���
alias grep

# ��ʾָ��ָ��ı���
alias ls
alias ls grep

# ����ָ��ı���
alias grep='grep --color=auto'

# ȡ��ָ��ı�������
unalias grep

# �Զ���alias�ļ�
cd ~
vi .alias
alias grep='grep --color=auto'
vi .bashrc
if [ -f ~/.alias ]; then
    . ~/.alias
fi
