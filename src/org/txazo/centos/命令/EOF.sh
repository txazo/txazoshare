# ********************< EOF >********************
# �����ݵ�����׼���봫������

cat > data.tmp << EOF
HelloWorld
Welcome to Beijing
EOF

# EOF��ʹ�ñ���
cat >> .bash_profile << EOF
export JAVA_HOME="/usr/java/jdk1.7.0_40"
export PATH="$PATH:$JAVA_HOME/bin:$JAVA_HOME/jre/bin"
export CLASSPATH=".:$JAVA_HOME/lib:$JAVA_HOME/jre/lib"
EOF
