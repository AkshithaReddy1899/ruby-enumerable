module MyEnumerable
  def all
    each { |n| return false unless yield n }
    return true
  end

  def any
    each { |n| return true if yield n }
    return false
  end

  def filter
    arr = []
    each { |n| arr.push(n) if yield n }
    arr
  end
end
