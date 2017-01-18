# 服务器运维的一些经验
## unix环境下，命令行的使用
可以首先查看使用帮助,如redis-cli -h,man ls或者vim中的:h rails等。ssh-keyscan

来自: http://man.linuxde.net/ssh-keyscan
## 服务器迁移需要注意的事项
由于服务器包含有很多子的组件，比如nginx，puma，passenger，rds，redis，otherserver，所以在迁移的时候需要注意到各个组件是否都有正确迁移.
