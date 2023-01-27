module Providers
  class Email
    attr_reader :message

    def initialize(message)
      @message = message
    end

    def notify
      puts "Email notification: #{@message}"
    end
  end
end
