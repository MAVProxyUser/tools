# 从grape入手学习rails强大的引擎
这里是一些关于grape的知识，以及rails引擎的学习经验
## grape开发流程
首先命名需要符合规范，模块层次需要清晰，并且要避免重名和模块污染。
```ruby
module Service
  module SubService
    class WorkApi < Grape::API
      namespace :doit do
        desc do
        end
        params do
        end
        curd, jbuilder: 'xxx' do
        end
        #route is api/namespace/curd

      end
    end
  end
end
 
```
baseapi需要mount

module Service
  class BaseAPI < Grape::API
    #version 'v1'
    mount Service::SubService::WorkApi
  end
end

grape开发同时需要mvc的设计。
jbuilder参考devops的example

