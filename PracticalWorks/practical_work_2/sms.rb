require_relative 'notification'
# A
class Sms
  include Notification

  def check(number)
    if number =~ /^\+\d{12}$/
      send_message(number)
    else
      add_to_log("#{number} invalid phone number")
    end
  end
end
