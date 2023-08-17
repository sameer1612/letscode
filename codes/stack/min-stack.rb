class MinStack
  def initialize
    @stack = []
    @min_till_val_stack = []
  end

  #     :type val: Integer
  #     :rtype: Void
  def push(val)
    @stack.push val
    if @min_till_val_stack.empty? || val < @min_till_val_stack.last
      @min_till_val_stack.push val
    else
      @min_till_val_stack.push @min_till_val_stack.last
    end
  end

  #     :rtype: Void
  def pop
    @stack.pop
    @min_till_val_stack.pop
  end

  #     :rtype: Integer
  def top
    @stack.last
  end

  #     :rtype: Integer
  def get_min
    @min_till_val_stack.last
  end
end

# Your MinStack object will be instantiated and called as such:
obj = MinStack.new
obj.push(1)
obj.push(2)
obj.push(3)
obj.pop
param_3 = obj.top
param_4 = obj.get_min

p [param_3, param_4] # [2, 1]
