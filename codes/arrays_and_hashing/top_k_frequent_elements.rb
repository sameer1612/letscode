# frozen_string_literal: true

def top_k_frequent(nums, k)
  nums.tally.sort { |a, b| b[1] - a[1] }.first(k).map { |a| a[0] }
end

p top_k_frequent([1, 1, 1, 2, 2, 3], 2) # [1, 2]
