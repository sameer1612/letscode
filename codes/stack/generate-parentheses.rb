require_relative './valid-parentheses'

# Sub optimal solution. Can be better implemented with a decision tree.
def generate_parenthesis(n)
  [['(', ')'] * (n - 1)].flatten.permutation.uniq.map { |a| "(#{a.join})" }.filter { |a| is_valid a }
end

p generate_parenthesis 3 # ["()()()", "()(())", "(())()", "(()())", "((()))"]
