require 'minitest/autorun'
require_relative './wheel'
require_relative './diameter_double'

class WheelTest < MiniTest::Test
  def setup
    @wheel = @object = Wheel.new(26, 1.5)
  end

  def test_implements_the_diameterizable_intereface
    assert_respond_to(@wheel, :width)
  end

  def test_calculates_diameter
    assert_in_delta(29, @wheel.diameter, 0.01)
  end
end

