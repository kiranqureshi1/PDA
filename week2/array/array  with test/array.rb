class Array

  attr_accessor :numbers

  def initialize(numbers)
    @numbers = numbers
  end

  def sum_array
    total = 0
    for number in @numbers
      total += number
    end
    return total
  end

end
