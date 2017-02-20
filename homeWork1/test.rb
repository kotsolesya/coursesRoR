require 'benchmark'
require_relative 'my_String'
class Test
  def test
    str = '[][][][][][][][][]()()()()()()()()()(){}{}{}{}{}{}{}{}{}lola[[]][[]][[]]{{()}}['
    p str.valid?
    p 'lola[[]][[]][[]]{{()}}'.valid?
    p '{(})'.valid?
    p '{{[]'.valid?
    p '{[()]}'.valid?
    p '======================'
    p str.valid_from_google?
    p 'lola[[]][[]][[]]{{()}}'.valid_from_google?
    p '{(})'.valid_from_google?
    p '{{[]'.valid_from_google?
    p '{[()]}'.valid_from_google?
    Benchmark.bm do |x|
      x.report("valid my\t") { str.valid? }
      x.report('valid google') { str.valid_from_google? }
    end
  end
end

a = Test.new
a.test
