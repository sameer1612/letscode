def longest_consecutive(nums)
  return 0 if nums.empty?

  nums = nums.uniq.sort
  max_count = 1
  count = 1

  (nums.length - 1).times do |i|
    if nums[i] == nums[i + 1] - 1
      count += 1
    else
      max_count = count if count > max_count
      count = 1
    end
  end

  max_count = count if count > max_count
  max_count
end

p longest_consecutive [100, 4, 200, 1, 3, 2]
