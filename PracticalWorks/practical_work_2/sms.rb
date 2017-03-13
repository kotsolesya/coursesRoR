require_relative 'notification'
# A
class Sms
  include Notification

  def check(number)
    if number =~ /[^\+]\d{11}/
      send_message('sms', number) { |y| puts "#{y} and in Sms class block" }
    else
      log_errors('sms', "#{number} invalid phone number")
    end
  end
end
