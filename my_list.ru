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
print list.all? { |e| e < 5 }
# => true
print list.all? { |e| e > 5 }
# => false

# Test #any?
print list.any? { |e| e == 2 }
# => true
print list.any? { |e| e == 5 }
# => false

# Test #filter
print list.filter(&:even?)
# => [2, 4]
