require_relative 'notification'
require_relative 'sms'
require_relative 'email'
puts '--------------SMS send-------------------'
s = Sms.new
s.check('0969654202')
s.check('+380964557202')
puts '--------------Email send-------------------'
e = Email.new
e.check('3423423@gfgh.b ')
e.check('milya_cr7@ukr.net')
puts
puts '--------------SMS error-------------------'
Sms.log

puts '-------------Email error-----------------'
Email.log
