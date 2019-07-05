require_relative './wheel'
require 'minitest/autorun'

class WheelTest < MiniTest::Test

  def test_calculates_diameter
    wheel = Wheel.new(26, 1.5)

    assert_in_delta(29, wheel.diameter, 0.01)
  end
end

