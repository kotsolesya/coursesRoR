require 'benchmark'
require_relative 'my_String'
class Test
  def test
    str = '[][][][][][][][][]()()()()()()()()()(){}{}{}{}{}{}{}{}{}lola[[]][[]][[]]{{()}}[<><><><><<><><><><><><><><><><><><><><><>'
    p str.valid?
    p 'lola[[]][[]][[]]{{()}}'.valid?
    p '{(})<>'.valid?
    p '{{[]'.valid?
    p '{[()]}<>'.valid?
    p '======================'
    p str.valid_string?
    p 'lola[[]][[]][[]]{{()}}'.valid_string?
    p '{(})<>'.valid_string?
    p '{{[]'.valid_string?
    p '{[()]}<>'.valid_string?
    p '======================'
    p str.valid_from_google?
    p 'lola[[]][[]][[]]{{()}}'.valid_from_google?
    p '{(})<>'.valid_from_google?
    p '{{[]'.valid_from_google?
    p '{[()]}<>'.valid_from_google?
    Benchmark.bm do |x|
      x.report("valid my stack\t") { str.valid? }
      x.report("valid regex\t") { str.valid_string? }
      x.report("valid google\t") { str.valid_from_google? }
    end
  end
end

a = Test.new
a.test
