# frozen_string_literal: true

# @param {Integer[]} nums
# @return {Boolean}
def contains_duplicate(nums)
  nums != nums.uniq
end

p contains_duplicate [1, 2, 1]
