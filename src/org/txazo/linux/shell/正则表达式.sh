# ********************< 函数传参 >********************
echo -e "1234\n4321" | grep '^12'
echo -e "1234\n4321" | grep '34$'
echo -e "1234\n4321" | grep '1..4'
echo -e "1234\n4321" | grep '1[123]34'
echo -e "1234\n4321" | grep '1[^a-zA-Z]34'
echo -e "1234\n4321" | grep '1[0-9]34'
echo -e "1234\n4321" | grep '1[0-9]\?234'
echo -e "1234\n4321" | grep '1[0-9]\+4'
echo -e "1234\n4321" | grep '1[0-9]*'
echo -e "1234\n4321" | grep '1\(23\)\?4'
echo "hello" | grep 'hel\{2\}o'
echo "hello" | grep 'h[a-z]\{2,\}o'
echo "hello" | grep 'h[a-z]\{3,5\}o'
echo "hello" | grep 'h[e|l]\{3\}o'


echo "  1234  " | grep '^\s*[1-4]\{4\}\s*$'