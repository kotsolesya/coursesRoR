# module
module Notification
  def send_message(type, recepient, &block)
    puts "Sending #{type.capitalize} to #{recepient} "
    block.call('inside module') if block
  end

  def log_errors(path, raise_message)
    fail "#{raise_message}"
  rescue => error
    File.open("#{path}_log.txt", 'a') do |fp|
      fp.write("#{error.message}\n")
    end
  end

  def self.included(base)
    base.extend Log
  end
  # class methods
  module Log
    def log(path)
      File.open("#{path}_log.txt", 'r') do |fp|
        fp.each_line do |line|
          puts line
        end
      end
    rescue StandardError => e
      puts e.message
    end
  end
end
