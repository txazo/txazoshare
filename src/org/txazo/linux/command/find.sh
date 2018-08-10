find <path> -options [-print -exec -ok ...]

find . -print

find . -name '*.txt'
find . ! -name '*.txt'
find . -name '*.txt' -print
find . -name '[a-f]*'
find . -name 'txazo'
find . -name 'txazo*'
find . -name '[a-zA-Z][a-zA-Z0-9]*'

find . -perm 755
find . ! -perm 755

find . -type d
find . -type f
find . ! -type f

find . -size 100c
find . -size +100c
find . -size -100c

find /home -path '/home/txazo' -prune

find . -user txazo

find . -group txazo

find . -mtime -n 5
find . -mtime +n 5

find . -name 'txazo' -depth

find . -type f -exec ls -l {} ,;