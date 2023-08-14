# frozen_string_literal: true

# @param {Integer[]} numbers
# @param {Integer} target
# @return {Integer[]}
def two_sum(numbers, target)
  numbers.each_with_index do |num1, i|
    num2 = target - num1
    index_num2 = binary_search(numbers, num2, i + 1)
    if index_num2 != -1
      first_index = i + 1
      return [first_index, index_num2 + 1]
    end
  end
end

def binary_search(numbers, value, offset)
  left = offset
  right = numbers.length - 1
  mid = ((left + right) / 2).to_i

  while left <= right
    if value > numbers[mid]
      left = mid + 1
      mid = ((left + right) / 2).to_i
    elsif value < numbers[mid]
      right = mid - 1
      mid = ((left + right) / 2).to_i
    else
      return mid
    end
  end

  -1
end

nums = [2, 7, 11, 15]
p two_sum nums, 9
