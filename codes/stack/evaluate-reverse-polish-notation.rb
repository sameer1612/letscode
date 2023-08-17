# @param {String[]} tokens
# @return {Integer}
def eval_rpn(tokens)
  stack = []
  operators = ['+', '-', '*', '/']
  tokens.each do |token|
    if operators.include? token
      val1 = stack.pop
      val2 = stack.pop
      case token
      when '+'
        stack.push val2 + val1
      when '-'
        stack.push val2 - val1
      when '*'
        stack.push val2 * val1
      when '/'
        res = (val2 / val1.to_f)
        stack.push res.negative? ? res.ceil : res.floor
      end
    else
      stack.push token.to_i
    end
  end

  stack.first
end

# p eval_rpn ['2', '1', '+', '3', '*'] # 9
p eval_rpn ['10', '6', '9', '3', '+', '-11', '*', '/', '*', '17', '+', '5', '+']
