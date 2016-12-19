#mongo的一些使用与学习
##使用
gem 'mongoid', '~> 5.1.1'
```
class CertConfirmedInfo
  include Mongoid::Document
  include Mongoid::Timestamps
  field :email,   type: String 
  field :main_sn, type: String
  field :eans,    type: String
end
```
rails g mongoid:config生成好配置文件，就可以调用mongo

声明好后就可以正常的使用orm语法来调用了
##参考
More info: [mongoref](https://gorails.com/guides/setting-up-rails-4-with-mongodb-and-mongoid)
