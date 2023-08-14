# frozen_string_literal: true

# @param {String[]} strs
# @return {String[][]}
def group_anagrams(strs)
  anagrams = {}

  strs.each do |word|
    sorted_word = word.chars.sort.join

    anagrams[sorted_word] = [*anagrams[sorted_word], word]
  end

  anagrams.values
end

p group_anagrams %w[eat tea tan ate nat bat] # [["eat", "tea", "ate"], ["tan", "nat"], ["bat"]]
