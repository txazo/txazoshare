# ********************< read >********************
# ��ȡ��׼����

# ��ȡ��׼���벢��ֵ������
read name

# �û�����ʱ������ʾ
read -p "Please input your name: " name

# ����ʾ�û�����
read -s -p "Please input your name: " name

# һ�ζ�ȡ����ֵ���������(�ո����)
read -p "Please input your name and password: " name password

# ��ȡʱ��ָ�����������ݸ�ֵ����������REPLY
read -p "Please input your name: "

# ��ʱ���룬��ʱ����δ����ʱ����0
if read -t 5 -p "Please input your name: " name; then
  echo "Hello, you name is $name"
else
  echo -e "\nSorry, time is out"
fi

# �������룬��������ַ����ﵽָ����ʱ���Զ��˳�
read -n 1 -p "Do you want to continue [y/n]? " answer
case $answer in
  Y|y)
    echo -e "\nContinue"
	;;
  N|n)
    echo -e "\nGood Bye"
	;;
  *)
    echo -e "\nError Choice"
	;;
esac

# ���ж�ȡ�ļ�
while read line; do
  echo $line
done < /etc/passwd

# �����Զ�����
# yum install expect
# read.sh
#!/bin/bash

read -p "Please input your name: " name
echo "$name"
read -s -p "Please input the password: " password
echo -e "\n$password"

# expect.sh
#!/usr/bin/expect

spawn ./read.sh
expect "name: "
send "txazo\n"
expect "password: "
send "txazo1218\n"
expect eof
exit