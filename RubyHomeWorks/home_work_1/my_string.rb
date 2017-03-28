# own method
class String
  def valid?
    stack = []
    brackets = { ')' => '(', '}' => '{', '>' => '<', ']' => '[' }
    each_char do |c|
      if brackets.values.include?(c)
        stack << c
      elsif stack.pop == brackets[c]
      else return false
      end
    end
    stack.empty?
  end

  def valid_string?
    strim = gsub(/[^\[\]\(\)\{\}\<>]/, '')
    return true if strim.empty?
    return false if strim.size.odd?
    loop do
      s = strim.gsub('()', '').gsub('[]', '').gsub('{}', '').gsub('<>', '')
      return true if s.empty?
      return false if s == strim
      strim = s
    end
  end
end
