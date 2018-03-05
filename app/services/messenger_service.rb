require 'bunny'

class MessengerService

  def initialize
    @connection = Bunny.new(automatically_recover: false)
    @connection.start
  end

  def channel
    @channel ||= @connection.create_channel
  end

  def queue
    @queue ||= channel.queue('bunnyrails')
  end

  def publish(msg)
    channel.default_exchange.publish(msg, routing_key: queue.name)
  end

  def close
    @connection.close
  end

end