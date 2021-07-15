require 'flipper/adapters/active_record'
require 'flipper/adapters/redis_cache'

Rails.application.configure do
  ttl_in_seconds = Rails.env == 'production' ? 3600 : 600
  adapter = Flipper::Adapters::ActiveRecord.new
  adapter = Flipper::Adapters::RedisCache.new(adapter, RedisConnector.instance.redis, ttl_in_seconds)
end
