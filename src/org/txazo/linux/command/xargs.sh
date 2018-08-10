xargs

find . -name 'vip_*' | xargs rm -rf
find . -name 'vip_*' | xargs wc -l
find . -name 'vip_*' | xargs cat
find . -name 'vip_*' | xargs ls -l

cat url.tmp | xargs wget -c