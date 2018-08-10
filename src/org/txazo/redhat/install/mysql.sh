#!/bin/bash
#
# Author: Tu XiaoZhou
# Date: 2013-09-30
# Description: Install MySQL

function init() {
  pkgPath="/soft/pkgs"
}

function downloadMysql() {
  /usr/bin/mysqladmin -u root password 'new-password'
  /usr/bin/mysql_secure_installation
  /usr/my.cnf
  cd $pkgPath
  wget http://dev.mysql.com/get/Downloads/MySQL-5.6/MySQL-server-5.6.14-1.rhel5.x86_64.rpm/from/http://cdn.mysql.com/
  wget http://dev.mysql.com/get/Downloads/MySQL-5.6/MySQL-client-5.6.14-1.rhel5.x86_64.rpm/from/http://cdn.mysql.com/
}

function installMysql() {
  
}

function main() {
  init
  downloadMysql
  installMysql
}

main