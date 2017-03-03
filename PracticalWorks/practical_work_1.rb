require 'faraday'
# get image from the URL and save to local file using backend HTTP client
class Image
  def self.download(url)
    response = Faraday.get url
    if /^5|4|3/ =~ "#{response.status}"
      fail ArgumentError, 'Response status code is not correct'
    elsif response.headers['content-type'] =~ /image/
      File.open(url.split('/').last, 'wb') { |fp| fp.write(response.body) }
    else
      fail TypeError, 'File is not an image'
    end
  rescue ArgumentError, TypeError, StandardError => e
    puts e.message
  end
end

URL1 = 'https://www.hello.com/img_/hello_logo_hero.png'
URL2 = 'https://drive.google.com/file/d/0Bz1w5xS9hSzReWJlMXhtdGlnTUE/view'
URL3 = 'lola'
URL4 = 'http://www.polytechnic.ck.ua/kkjkdjkf'
Image.download(URL1)
puts '==========================='
Image.download(URL2)
puts '==========================='
Image.download(URL3)
puts '==========================='
Image.download(URL4)
