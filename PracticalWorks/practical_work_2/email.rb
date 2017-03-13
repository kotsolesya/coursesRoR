require_relative 'notification'
# B
class Email
  include Notification

  def check(email)
    if email =~ /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
      send_message('email', email) { |y| puts "#{y} and in Email class block" }
    else
      log_errors('email', "#{email} not valid email!")
    end
  end
end
