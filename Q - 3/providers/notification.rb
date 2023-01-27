require_relative "whatsapp.rb"
require_relative "sms.rb"
require_relative "email.rb"

module Notification
  PROVIDERS = {
    sms: Providers::Sms,
    whatsapp: Providers::Whatsapp,
    email: Providers::Email
  }.freeze

  def self.notify(message)
    PROVIDERS.values.each do |provider|
      provider.new(message).notify
    end
  end
end
