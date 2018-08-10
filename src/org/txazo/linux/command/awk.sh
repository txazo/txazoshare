awk [-F field-separator] 'BEGIN {} pattern {} END {}' input-file(s)

awk 'BEGIN {print ARGC; for (i in ARGV) {print "ARGV["i"]: "ARGV[i]}}' 1.data 2.data
awk '{print NR,FILENAME,NF,FNR,$0}' 1.data 2.data
awk 'BEGIN {FS=":"; RS="\n"; OFS="-"; ORS="!\n"} {print $1,$2}' 1.data 2.data

txazo="txazo1218"
echo | awk -v v=$txazo 'BEGIN {print v}'

echo | awk -v v1="1" -v v2="2" 'BEGIN {print v1,v2}'

i=1
echo -e "11 12\n21 22\n31 32" | awk '{print $'$i'}'

echo "hello" | awk '{print length($1)}'
echo "hello" | awk '{print index($1, "el")}'

echo -e "11 12\n21 22\n31 32" | awk '/11/ {print $2}'

echo -e "11 12\n21 22\n31 32" | awk '$2 ~ /^12/ {print $2}'

echo -e "11:12\n21:22\n31:32" | awk -F ":" '{print $1"-"$2}'
echo -e "11:12\n21:22\n31:32" | awk 'BEGIN {FS=":"} {print $1"-"$2}'

echo -e "11 12\n21 22\n31 32" | awk -f awk.sh
cat awk.sh
/11/ {
  print $1,$2
}

echo -e "11 12\n21 22\n31 32" | awk '$1 ~ /11/ {print $2}'
echo -e "11 12\n21 22\n31 32" | awk '$1 > 11 {print $2}'
echo -e "11 12\n21 22\n31 32" | awk 'BEGIN {print "BEGIN"} $1 > 11 {print $2} END {print "END"}'

echo -e "11 12\n21 22\n31 32" | awk '{max=($1 > max ? $1 : max)} END {print max}'

echo -e "11 12\n21 22\n31 32" | awk '{$1=1; print $0}'

echo -e "11 12\n21 22\n31 32" | awk '{count++;} END {print count}'

echo -e "11 12\n21 22\n31 32" | awk 'BEGIN {ORS=""} {i=1; while (i <= NF) {print $i" "; i++} print "\n"}'
echo -e "11 12\n21 22\n31 32" | awk 'BEGIN {ORS=""} {for (i=1; i <= NF; i++) {print $i" "} print "\n"}'

echo -e "11 12\n21 22\n31 32" | awk 'BEGIN {getline; print $0} {print $0}'
echo | awk '{"grep root /etc/passwd" | getline line; print line}'

txazo="12"
echo | awk '{print '$txazo'}'

awk '/12/' 1.data
awk '/12/ || /23/' 1.data
awk '$1 == 12' 1.data
awk '$1 == 12 && $2 == 23' 1.data
ll | awk '$5 > 1000'

awk '{print}' /etc/passwd
awk '{print $0}' /etc/passwd

awk '{print "hello"}' /etc/passwd
awk -F ":" '{print $1}' /etc/passwd
awk -F ":" '{print $1, $2}' /etc/passwd
awk -F ":" '{print $1 " " $2}' /etc/passwd
awk -F ":" '{print "username:" $1 "\tuid:" $3}' /etc/passwd

awk '{print}' /etc/passwd | tee ouput.txt

awk -F ":" '{if($1 ~ /tuxiaozhou/) print $1}' /etc/passwd
awk -F ":" '{if($1 ~ /[tu]xiaozhou/) print $1}' /etc/passwd
awk -F ":" '{if($1 !~ /tuxiaozhou/) print $1}' /etc/passwd
awk -F ":" '{if($1 == "tuxiaozhou") print $1}' /etc/passwd
< <= > >=

awk -F ":" '$1 ~ /tuxiaozhou/' /etc/passwd

awk -F ":" '{if($1 ~ /^..xiaozhou/) print $1}' /etc/passwd
awk -F ":" '{if($1 ~ /^tu/) print $1}' /etc/passwd

awk -F ":" '{if($1 ~ /(tu|tuxiaozhou)/) print $1}' /etc/passwd    

awk 'END {print NR}' /etc/passwd

awk 'BEGIN {FS=":";print "NAME\tUID"}{print $1"\t"$3} END {print "count: "NR}' /etc/passwd


awk -F ":" '$1 == "tuxiaozhou"' /etc/passwd

awk -F ":" '{print $1,$(NF-1),$NF}' /etc/passwd

awk 'NR == 2, NR == 5' /etc/passwd
awk '/txazo/, /svn/' /etc/passwd                                                                                                                                                                                                                                                                                                                                                                                             