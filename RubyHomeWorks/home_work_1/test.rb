require 'benchmark'
require_relative 'my_String'

# test my_String
class Test
  def test
    str = '[[]][xcv[]][[]]{{()}}[<><><><><<><><><><><><><><><><><><><><><>'
    Benchmark.bm do |x|
      x.report("valid my stack\t") { str.valid? }
      x.report("valid regex\t") { str.valid_string? }
    end
  end
end

a = Test.new
a.test
