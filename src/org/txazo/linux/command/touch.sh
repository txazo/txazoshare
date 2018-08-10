touch

touch a.tmp 文件存在，创建空文件；不存在，修改时间为当前系统时间
touch -d 20130812 a.tmp 修改文件修改时间[yyyyMMDD]
touch -t 08121230 a.tmp 修改文件修改时间[MMDDHHmm]
touch -t 201308121230 a.tmp 修改文件修改时间[yyyyMMDDHHmm]
touch -r sample.tmp a.tmp 修改文件修改时间为指定文件的修改时间