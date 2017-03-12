require_relative 'document'
require_relative 'link'
require_relative 'header'
# Code should parse provided HTML document and puts info into console

URL = 'http://www.nokogiri.org/tutorials/installing_nokogiri.html'
puts '----------Document---------'
Document.new(URL).parse('p')
puts '----------Link-------------'
Link.new(URL).parse
puts '----------Header-----------'
Header.new(URL).parse
