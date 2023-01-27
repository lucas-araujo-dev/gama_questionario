module Providers
  class Sms
    attr_reader :message

    def initialize(message)
      @message = message
    end

    def notify
      puts "Sms notification: #{@message}"
    end
  end
end
