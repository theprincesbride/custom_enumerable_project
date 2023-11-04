module Enumerable
  def my_each_with_index
    i = 0
    while i < self.length
      yield self[i], i
      i += 1
    end
    return self
  end

  def my_select
    new_array = []
    i = 0
    while i < self.length
      if yield(self[i]) == true
      new_array << self[i]
      end
      i += 1
    end
    return new_array
  end

  def my_all?
    i = 0
    while i < self.length
      if yield(self[i]) == false
        return false
      end
      i += 1
    end
  return true
  end

  def my_any?
    i = 0
    while i < self.length
      if yield(self[i]) == true
        return true
      end
      i += 1
    end
    return false
  end

  def my_none?
    i = 0
    while i < self.length
      if yield(self[i]) == true
        return false
      end
      i += 1
    end
    return true
  end

  def my_count
    if block_given?
    i = 0
    count = 0
    while i < self.length
      if yield(self[i]) == true
        count += 1
      end
      i += 1
    end
    return count
  end
  return self.length
  end

  def my_map
    i = 0
    new_array = []
    while i < self.length
      new_array << yield(self[i])
      i += 1
    end
return new_array
  end

  def my_inject(initial_value)
    i = 0
    value = initial_value
if initial_value == 1
  while i < self.length
    value *= self[i]
    i += 1
  end
elsif initial_value != 1
    while i < self.length
     value += self[i]
      i += 1
    end

  end
  return value
end



end

# You will first have to define my_each
# on the Array class. Methods defined in
# your enumerable module will have access
# to this method
class Array
  def my_each
    i = 0
    while i < self.length
      yield self[i]
      i += 1
    end
    return self
  end
end

#bundle exec rspec spec/my_inject_spec.rb
# if block_given?
#   for element in self
#     yield element
# end
# return self
# end
# end
