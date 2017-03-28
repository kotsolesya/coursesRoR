require 'nokogiri'
require 'open-uri'
# Parent class for opening url and using Nokogiri
class Document
  def initialize(url)
    @url = url
  end

  def parse(tag)
    @page = Nokogiri::HTML(open(@url))
    @contents = @page.css(tag)
    puts "Number of tags #{@contents.length}"
  rescue StandardError => e
    puts e.message
  end
end
