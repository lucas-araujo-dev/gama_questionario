module Providers
  class Sms
    attr_reader :message

    def initialize(message)
      @message = message
    end

    def notify
      puts "notification: #{@message}"
    end
  end
end
