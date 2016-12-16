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
声明好后就可以正常的使用orm语法来调用了
