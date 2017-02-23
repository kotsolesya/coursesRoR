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
    strim = self.gsub(/[^\[\]\(\)\{\}\<>]/,'')
    return true if strim.empty?
    return false if strim.size.odd?
    loop do
      s = strim.gsub('()', '').gsub('[]', '').gsub('{}', '').gsub('<>', '')
      return true if s.empty?
      return false if s == strim
      strim = s
    end
  end

  def valid_from_google?
    stack = []
    each_char do |char|
      case char
      when '{', '[', '(', '<'
        stack.push(char)
      when '}'
        x = stack.pop
        return false if x != '{'
      when ']'
        x = stack.pop
        return false if x != '['
      when ')'
        x = stack.pop
        return false if x != '('
      when '>'
        x = stack.pop
        return false if x != '<'
      end
    end
    stack.empty?
  end
end
