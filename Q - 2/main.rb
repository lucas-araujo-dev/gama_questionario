require_relative 'providers/notification'

Notification.notify(:sms, 'teste sms')
Notification.notify(:whatsapp, 'teste whatsapp')
Notification.notify(:email, 'teste email')
