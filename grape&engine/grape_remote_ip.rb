https://github.com/ruby-grape/grape#remote-ip
```
class API < Grape::API
  use ActionDispatch::RemoteIp

  helpers do
    def client_ip
      env['action_dispatch.remote_ip'].to_s
    end
  end

  get :remote_ip do
    { ip: client_ip }
  end
end

```
这是grape获取remoteip的方法,并且做访问控制的方法
```
def acl
ips=%w(1 2 3 4)
if ips.includes? client_ip
error!({sta:a,stab:b})
end
end

```
