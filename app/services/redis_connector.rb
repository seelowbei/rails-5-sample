require 'singleton'

class RedisConnector
  include Singleton
  attr_reader :redis

  def initialize
    @redis = Redis.new(
      host: 'localhost',
      port: 6379,
      db: 1
    )
  end
end
