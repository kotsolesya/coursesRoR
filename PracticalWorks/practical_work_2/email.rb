require_relative 'notification'
# B
class Email
  include Notification

  def check(email)
    if email =~ /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
      send_message(email)
    else
      add_to_log("#{email} not valid email!")
    end
  end
end
