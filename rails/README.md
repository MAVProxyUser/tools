#rails 启动过程的学习
#读取环境变量
config.before_configuration do
  env_file = File.join(Rails.root, 'config', 'local_env.yml')
  YAML.load(File.open(env_file)).each do |key, value|
    ENV[key.to_s] = value
  end if File.exists?(env_file)
end
//Do not swallow errors in after_commit/after_rollback callbacks.
config.active_record.raise_in_transactional_callbacks = true

//config.eager_load_paths += ["#{config.root}/lib/fly_record"]


##加载一些目录下的模块
config.autoload_paths += %w(lib services workers)

//#config.time_zone = 'UTC' # 使用通用协调时，北京时区为 UTC +8。

//# 指定API模 jbuilder模板的位置
config.middleware.use(Rack::Config) do |env|
  env['api.tilt.root'] = Rails.root.join 'app', 'views', 'api'
end

# 添加 grape api 路径
config.paths.add File.join('app', 'api'), glob: File.join('**', '*.rb')
//# config.autoload_paths += Dir[Rails.root.join('app', 'api', '*')]
config.autoload_paths += %w(api)

# 添加redis缓存
config.cache_store = :redis_store, Settings.cache.redis_url, { expires_in: 30.days, multithread: true }
