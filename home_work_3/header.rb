# Class to puts all headers
class Header < Document
  def parse
    super 'h2'
    @contents.each { |h| puts h.text }
  rescue StandardError => e
    puts e.message
  end
end
