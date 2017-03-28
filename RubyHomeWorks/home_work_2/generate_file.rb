# rand for file
class MyFile
  def initialize(n)
    @n = n
  end

  def create
    File.open('temperature.csv', 'w') do |file|
      @n.times do
        str = "#{rand((Time.now - 86_400 * 365)..Time.now).strftime('%d.%m')},"
        t = "#{rand(-20..20)}\n"
        file << str << t
      end
      file.close
    end
  end
end

file = MyFile.new(50)
file.create
