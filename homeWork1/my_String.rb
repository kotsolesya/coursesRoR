class String
  def valid?
    stack = []
    brackets = { ')' => '(', '}' => '{', '>' => '<', ']' => '[' }
    each_char do |c|
      if ['{', '[', '(', '<'].include?(c)
        stack << c
      elsif stack.pop == brackets[c]
      else return false
      end
    end
    stack.empty?
  end
end

p 'lola{{()}}'.valid?
p '{(})'.valid?
p '{{[]'.valid?
p '{[()]}'.valid?
