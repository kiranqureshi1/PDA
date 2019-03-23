require( 'minitest/autorun' )
require( 'minitest/rg' )
require_relative( '../array.rb' )


class TestArray < MiniTest::Test

  def test_sum_array
    # arrange
    numbers = Array.new([1,2,3,4,5])
    # act
    result = numbers.sum_array
    # assert
    assert_equal( 15, result )
  end
end
