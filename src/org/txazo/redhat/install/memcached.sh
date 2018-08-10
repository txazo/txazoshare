#!/bin/bash
#
# Author: Tu XiaoZhou
# Date: 2013-10-02
# Description: Install Memcached

function init() {
  pkgPath="/soft/pkgs"
  usrLocalPath="/usr/local"
  libeventHome="$usrLocalPath/libevent"
  memcachedHome="$usrLocalPath/memcached"
}

function downloadLibevent() {
  cd $pkgPath
  wget https://github.com/downloads/libevent/libevent/libevent-2.0.21-stable.tar.gz
}

function installLibevent() {
  tar -zxvf libevent-2.0.21-stable.tar.gz -C $usrLocalPath
  cd $usrLocalPath
  mv libevent-2.0.21-stable libevent
  
  cd $libeventHome
  ./configure --prefix=$libeventHome
  make
  make install
}

function downloadMemcached() {
  cd $pkgPath
  wget http://memcached.googlecode.com/files/memcached-1.4.15.tar.gz
}

function installMemcached() {
  tar -zxvf memcached-1.4.15.tar.gz -C $usrLocalPath
  cd $usrLocalPath
  mv memcached-1.4.15 memcached
  
  cd $memcachedHome
  ./configure --prefix="$memcachedHome" --with-libevent="$libeventHome"
  make
  make install
}

function main() {
  init
  downloadLibevent
  installLibevent
  downloadMemcached
  installMemcached
}

main