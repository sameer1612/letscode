def is_valid(s = '')
  stack = []
  bracket_pairs = {
    '(' => ')',
    '[' => ']',
    '{' => '}'
  }
  s.each_char do |bracket|
    if bracket_pairs.key? bracket
      stack.push bracket
    else
      return false unless bracket_pairs[stack.last] == bracket

      stack.pop
    end
  end

  stack.empty?
end

p is_valid '()[]{}' # true
