# 服务器运维的一些经验
## unix环境下，命令行的使用
redis-cli -h
## 服务器迁移需要注意的事项
由于服务器包含有很多子的组件，比如nginx，puma，passenger，rds，redis，otherserver，所以在迁移的时候需要注意到各个组件是否都有正确迁移.
