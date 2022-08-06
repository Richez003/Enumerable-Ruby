module MyEnumerable
  def all?
    return true unless block_given?

    each { |n| return false unless yield n }
    true
  end

  def any?
    return true unless block_given?

    each { |n| return true if yield n }
    false
  end

  def filter
    num_arr = []
    each { |n| num_arr.push(n) if yield n }
    num_arr
  end
end
