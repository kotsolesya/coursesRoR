require_relative 'notification'
require_relative 'sms'
require_relative 'email'

s = Sms.new
s.check('096864855')
s.check('+380964557202')

e = Email.new
e.check('lalalal@lallala')
e.check('kots.olesya@gmail.com')

puts '--------------SMS error-------------------'
Sms.log('sms')

puts '-------------Email error-----------------'
Email.log('email')
