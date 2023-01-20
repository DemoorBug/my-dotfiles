# /var/www/html/ 中的文件复制到 /var/www/dev中
- 并且排除/var/www/html/sites/video 中的文件
- 如果需要排除多个文件，则可以加多个exclude
- https://stackoverflow.com/a/47732155/14344150
- rsync 这个命令mac好像自带？
`rsync -av --exclude 'sites/video' /var/www/html/ /var/www/dev`



# 通过mdfind查找 git.md 并且匹配blog目录，再通过xargs把获得的字符串传递给nvim
mdfind git.md | grep blog | xargs nvim

# 简单的方法排除某些后缀的文件
- https://stackoverflow.com/a/8088439/14344150
- fish shell
`cp (string match -v '*.excluded.names' -- srcdir/*) destdir`
- 这个方法貌似只能排除文件，不能排除目录,可惜了
