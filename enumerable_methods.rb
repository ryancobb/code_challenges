module Enumerable
  def my_each
    return self unless block_given?
    for i in self
      yield(i)
    end
  end

  def my_each_with_index
    return self unless block_given?
    index = 0
    for i in self
      yield i, index
      index += 1
    end
  end

  def my_select
    return self unless block_given?
    results = []
    my_each { |i| results << i if yield(i) }
    results
  end

  def my_all?
    if block_given?
      my_each { |i| return false unless yield(i) }
    else
      my_each { |i| return false unless i }
    end
  true
  end

  def my_any?
    if block_given?
      my_each { |i| return true if yield(i) }
    else
      my_each { |i| return true if i }
    end
  false
  end

  def my_none?
    if block_given?
      my_each { |i| return false if yield(i) }
    else
      my_each { |i| return false if i }
    end
  true
  end

  def my_count
    if block_given?
      count = 0
      my_each { |i| count += 1 if yield(i) }
      count
    else
      self.length
    end
  end

  def my_map
    if block_given?
      result = []
      my_each { |i| result << yield(i) }
      result
    else
      return self
    end
  end
end

arr = [0 , 10 , 3 , 1 , 2]

puts "my_each"
arr.my_each { |num| puts num }
puts "my_each_with_index"
arr.my_each_with_index { |num, i| puts "#{num} #{i}"}
puts "my_select"
puts arr.my_select { |num| num.odd?}
puts "my_all?"
puts arr.my_all? { |num| num > 1 }
puts "my_any?"
puts arr.my_any?
puts "my_none?"
puts arr.my_none? { |num| num > 5 }
puts "my_count"
puts arr.my_count { |num| num > 2 }
puts "my_map"
puts arr.my_map { |num| num * 2 }
