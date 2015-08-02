require 'test_helper'

class CalculatorTest < ActiveSupport::TestCase



  def setup
    @calculator = Calculator.new
  end

  test "shows how many years until retirement for a 20 year old" do
    assert_equal 45, @calculator.how_long_until_retirement(20)
  end

  test "shows how many years until retirement for a 33 year old" do
    assert_equal 33, @calculator.how_long_until_retirement(32)
  end

  test "20 yo starts at 0, puts $1000 a year at 0% interest" do
    assert_equal 45000, @calculator.how_much_at_retirement(20, 1000, 0)
  end

  test "20 yo starts at 0, puts $1000 a year and it earns 5% interest" do
    assert_equal 45000, @calculator.how_much_at_retirement(20, 1000, 5)
  end


  test "20 yo starts at 1000, puts $1000 a year and it earns 15% interest" do
    assert_equal 45000, @calculator.how_much_at_retirement(20, 1000, 15, 1000)
  end


end
