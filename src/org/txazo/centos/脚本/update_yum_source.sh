#!/bin/bash
# Function:    update yum source

check_os_release() {
  while true
  do
    os_release=`grep "CentOS release" /etc/issue 2> /dev/null`
    os_release_2=`grep "CentOS release" /etc/*release 2> /dev/null`
    if [ "$os_release" ] && [ "$os_release_2" ]
    then
      echo $os_release
      break
    fi
    break
  done
}

modify_rhel5_yum() {
  rpm --import http://mirrors.163.com/centos/RPM-GPG-KEY-CentOS-5
  cd /etc/yum.repos.d/
  wget http://mirrors.163.com/.help/CentOS-Base-163.repo -O CentOS-Base-163.repo
  sed -i '/mirrorlist/d' CentOS-Base-163.repo
  sed -i 's/\$releasever/5/' CentOS-Base-163.repo
  yum clean metadata
  yum makecache
  cd ~
}

modify_rhel6_yum() {
  rpm --import http://mirrors.163.com/centos/RPM-GPG-KEY-CentOS-6
  cd /etc/yum.repos.d/
  wget http://mirrors.163.com/.help/CentOS-Base-163.repo -O CentOS-Base-163.repo
  sed -i '/mirrorlist/d' CentOS-Base-163.repo
  sed -i '/\[addons\]/,/^$/d' CentOS-Base-163.repo
  sed -i 's/\$releasever/6/' CentOS-Base-163.repo
  sed -i 's/RPM-GPG-KEY-CentOS-5/RPM-GPG-KEY-CentOS-6/' CentOS-Base-163.repo
  yum clean metadata
  yum makecache
  cd ~
}

main() {
  os_type=`check_os_release`
  echo "This OS is $os_type."
  
  echo "$os_type" | grep 5 > /dev/null
  if [ $? -eq 0 ]
  then
    modify_rhel5_yum
    exit 0
  fi
  
  echo "$os_type"| grep 6 > /dev/null
  if [ $? -eq 0 ]
  then
    modify_rhel6_yum
    exit 0
  fi
}

main