# Class to puts all links
class Link < Document
  def parse
    super 'a'
    @contents.each { |link| puts "#{link.text}\t#{link['href']}" }
  rescue StandardError => e
    puts e.message
  end
end
