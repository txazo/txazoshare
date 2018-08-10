#!/bin/bash
#
# Author: Tu XiaoZhou
# Date: 2013-10-05
# Description: Install Resin

function init() {
  pkgPath="/soft/pkgs"
  srcPath="/soft/src"
  resinHome="/usr/local/resin"
}

function downloadResin() {
  cd $pkgPath
  wget http://www.caucho.com/download/resin-4.0.37.tar.gz
}

function installResin() {
  tar -zxvf resin-4.0.37.tar.gz -C $srcPath
  cd $srcPath/resin-4.0.37

  ./configure --prefix="$resinHome"
  make
  make install
}

function main() {
  init
  downloadResin
  installResin
}

main