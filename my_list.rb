require_relative 'my_enumerable'

class MyList
  include MyEnumerable
  def initialize(*number)
    @list = number
  end

  def each(&ele)
    @list.each(&ele)
  end
end

list = MyList.new(1, 2, 3, 4)
puts list.filter(&:even?)
