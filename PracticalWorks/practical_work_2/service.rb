require 'pony'
require 'yaml'
# module
module Servise
  # class Deliver sms and email
  class Deliver
    def sms(recepient)
      puts "Sending SMS to #{recepient}"
    end

    def email(recepient)
      puts "Sending Email to #{recepient}"
      config = YAML.load_file('config.yml')
      Pony.mail(to: recepient, subject: config['subject'],
                body: config['body'], via: config['via'],
                via_options: {
                  address: config['via_options']['address'], port: '587',
                  user_name: config['via_options']['username'],
                  password: config['via_options']['password'],
                  domain: 'localhost.localdomain'
                })
    end
  end
end
