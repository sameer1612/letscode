# frozen_string_literal: true

# @param [String] str1
# @param [String] str2
# @return [TrueClass, FalseClass]
def is_anagram(str1, str2)
  return false if str1.length != str2.length

  str1.chars.tally == str2.chars.tally
end

p is_anagram('aba', 'aab')
