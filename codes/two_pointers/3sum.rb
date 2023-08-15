def two_sum(numbers, target, offset)
  res = []
  left_index = offset
  right_index = numbers.length - 1

  while left_index < right_index
    sum =  numbers[left_index] + numbers[right_index]
    if sum == target
      num1 = numbers[left_index]
      num2 = numbers[right_index]
      res << [num1, num2]

      left_index += 1 while num1 == numbers[left_index]
      right_index -= 1 while num1 == numbers[right_index]
      next
    end

    if sum > target
      right_index -= 1
    else
      left_index += 1
    end
  end

  res.uniq
end

def three_sum(nums)
  res = []
  nums.sort!

  i = 0
  while i < nums.size
    num = nums[i]
    break if num > 0

    comp_target = -1 * num
    comp_nums_list = two_sum(nums, comp_target, i + 1)
    comp_nums_list.each { |comp_nums| res << [num, *comp_nums] } unless comp_nums_list.empty?
    i += 1 while nums[i] == num
  end

  res
end

p three_sum [-1, 0, 1, 2, -1, -4] # [[-1,-1,2],[-1,0,1]]
