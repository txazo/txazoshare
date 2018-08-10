#!/bin/bash
#
# Author: Tu XiaoZhou
# Date: 2013-09-30

function monitorDisk() {
  usage=`df | awk '$6 == "/" {print $5}' | sed 's/%//'`
  echo "The disk space is used ${usage}%"
}

function monitorHome() {
  total=`du -s /home | awk '{print $1}'`
  echo ${total}
  du -s /home/* | sed 's/\/home\///' | sort -nr | awk 'BEGIN {
    printf("%s\t\t%s\t\t%s\n", "User", "Space", "Usage")
  } {
    printf("%s\t\t%s\t\t%6.2f%s\n", $2, $1, ($1 / total) * 100, "%")
  } END {
    printf("%s\t\t%s\t\t%.2f%s\n", "Total", total, 100, "%")
  }' total="${total}"
}

function main() {
  monitorDisk
  monitorHome
}

main