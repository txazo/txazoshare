#!/bin/bash
#
# Author: Tu XiaoZhou
# Date: 2013-10-02
# Description: Install JDK

function init() {
  pkgPath="/soft/pkgs"
  profile="/etc/profile"
}

function downloadJdk() {
  cd $pkgPath
  wget --no-cookie --no-check-certificate --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F" http://download.oracle.com/otn-pub/java/jdk/7u40-b43/jdk-7u40-linux-x64.rpm
  mv jdk-7u40-linux-x64.rpm* jdk-7u40-linux-x64.rpm
}

function installJdk() {
  rpm -ivh jdk-7u40-linux-x64.rpm
  
  sed -i '/^export/a export JAVA_HOME="/usr/java/jdk1.7.0_40"\
                     export PATH="$PATH:$JAVA_HOME/bin:$JAVA_HOME/jre/bin"\
                     export CLASSPATH=".:$JAVA_HOME/lib:$JAVA_HOME/jre/lib"' \
	$profile

  sed -i 's/^\s\+export/export/' $profile
  
  source $profile
}

function main() {
  init
  downloadJdk
  installJdk
}

main