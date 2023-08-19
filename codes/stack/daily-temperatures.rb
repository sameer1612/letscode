# @param {Integer[]} temperatures
# @return {Integer[]}
def daily_temperatures(temperatures)
  temperatures.map.with_index do |temp, i|
    ((i + 1..temperatures.size - 1).find { |j| temperatures[j] > temp } || i) - i
  end
end

p daily_temperatures [73, 74, 75, 71, 69, 72, 76, 73] # [1,1,4,2,1,1,0,0]
