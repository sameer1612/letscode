def trap(height)
  left_max = [0]
  right_max = [0]
  total_area = 0

  (height.size - 1).times do |i|
    left_max.push left_max.last > height[i] ? left_max.last : height[i]
    right_max.unshift right_max.first > height[height.size - 1 - i] ? right_max.first : height[height.size - 1 - i]
  end

  (height.size - 1).times do |i|
    area = [left_max[i], right_max[i]].min - height[i]
    total_area += area if area.positive?
  end

  total_area
end

p trap [0, 1, 0, 2, 1, 0, 1, 3, 2, 1, 2, 1] # 6
