def max_area(height)
  max_area = 0
  left = 0
  right = height.length - 1

  while left < right
    min_height = [height[left], height[right]].min
    area = min_height * (right - left)
    max_area = area if area > max_area

    if height[left] > height [right]
      right -= 1
    elsif height[left] < height [right]
      left += 1
    else
      right -= 1
      left += 1
    end
  end

  max_area
end

p max_area [1, 8, 6, 2, 5, 4, 8, 3, 7] # 49
