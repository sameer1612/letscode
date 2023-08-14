# frozen_string_literal: true

# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
  iterated = {}

  nums.each_with_index do |num, i|
    diff = target - num
    return [iterated[diff], i] if iterated[diff]

    iterated[num] = i
  end
end

p two_sum [2, 7, 11, 15], 9 # [0, 1]
