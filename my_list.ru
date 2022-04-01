require_relative 'my_enumerable'

class MyList
  include MyEnumerable

  def initialize(*list)
    @list = list
  end

  def each
		x = 0
		while @list[x]
			yield @list[x]
			x += 1
		end
  end
end

list = MyList.new(1, 2, 3, 4)

# Test #all?
puts list.all { |e| e < 5 }
# => true
puts list.all { |e| e > 5 }
# => false

# Test #any?
puts list.any { |e| e == 2 }
# => true
puts list.any { |e| e == 5 }
# => false

# Test #filter
print list.filter(&:even?)
# => [2, 4]
