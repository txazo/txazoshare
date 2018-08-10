#!/bin/bash

space=`df | sed -n '/\/$/p' | awk '{print $5}' | sed 's/%//'`

if [ ${space} -gt 50 ]
then
    echo "Disk space is used $space%" | mail -s "Disk warning" 784990655@qq.com
else
    echo "Disk space is used $space%" | mail -s "Disk normal" 784990655@qq.com
fi