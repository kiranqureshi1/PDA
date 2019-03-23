class Array

  attr_accessor :numbers

  def initialize(numbers)
    @numbers = numbers
  end
# This method sums the array in a loop
  def sum_array
    total = 0
#total starts from 0
    for number in @numbers
#first number in an array @numbers would add to the total
      total += number
#total = total + 0
    end
    return total
#total is 1 when it goes in a loop for the first time
  end

end
