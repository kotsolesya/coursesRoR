require 'csv'
# parse csv file, calculate and display average temperature for each month
class Task3
  def initialize
    @mounts = Array.new(12, 0)
    @t = Array.new(12, 0)
  end

  def read_file
    CSV.foreach('temperature.csv') do |row|
      puts row.inspect
      m = row[0][3..4].to_i - 1
      @mounts[m] += 1
      @t[m] = @t[m] + row[1].to_i
    end
  rescue => err
    puts "Exception: #{err}"
    err
  end

  def avg_temperatute
    @t.each.with_index do |val, index|
      if @mounts[index].zero?
        print "m=#{index + 1}  t=#{val}\n"
      else
        avg = (val.to_f / @mounts[index].to_f).round(2)
        print "m=#{index + 1}  t=#{avg}\n"
      end
    end
  end
end

obj = Task3.new
obj.read_file
obj.avg_temperatute
