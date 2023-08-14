# frozen_string_literal: true

# @param {Integer[]} nums
# @return {Integer[]}
def product_except_self(nums)
  left_prod = [1]
  right_prod = [1]
  last_left_prod = 1
  last_right_prod = 1

  (nums.length - 1).times do |i|
    last_left_prod *= nums[i]
    left_prod << last_left_prod

    last_right_prod *= nums[nums.length - (i + 1)]
    right_prod << last_right_prod
  end
  right_prod.reverse!

  (0...nums.length).map { |i| left_prod[i] * right_prod[i] }
end

p product_except_self [-1, 1, 0, -3, 3] # [0, 0, 9, 0, 0]
