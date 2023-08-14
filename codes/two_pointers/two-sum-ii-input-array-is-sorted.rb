# frozen_string_literal: true

# @param {Integer[]} numbers
# @param {Integer} target
# @return {Integer[]}
def two_sum(numbers, target)
  left_index = 0
  right_index = numbers.length - 1

  while left_index < right_index
    sum =  numbers[left_index] + numbers[right_index]
    return [left_index + 1, right_index + 1] if sum == target

    if sum > target
      right_index -= 1
    else
      left_index += 1
    end
  end
end

nums = [2, 7, 11, 15]
p two_sum nums, 9 # [1, 2]
