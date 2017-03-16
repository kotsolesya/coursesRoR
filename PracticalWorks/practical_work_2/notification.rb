require_relative 'service'
# module
module Notification
  def send_message(recepient)
    Servise::Deliver.new.send(self.class.to_s.downcase, recepient)
  end

  def add_to_log(raise_message)
    fail "#{raise_message}"
  rescue => error
    File.open("#{self.class}.log", 'a') do |fp|
      fp.write("#{error.message}\n")
    end
  end

  def self.included(base)
    base.extend Log
  end
  # class methods
  module Log
    def log
      File.open("#{name}.log", 'r') do |fp|
        fp.each_line do |line|
          puts line
        end
      end
    rescue StandardError => e
      puts e.message
    end
  end
end
