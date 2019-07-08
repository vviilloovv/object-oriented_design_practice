require 'minitest/autorun'
require_relative './bicycle'

module BicycleInterfaceTest
  def test_responds_to_default_tire_size
    assert_respond_to(@object, :default_tire_size)
  end

  def test_responds_to_default_chain
    assert_respond_to(@object, :default_chain)
  end

  def test_responds_to_chain
    assert_respond_to(@object, :chain)
  end

  def test_responds_to_size
    assert_respond_to(@object, :size)
  end

  def test_responds_to_tire_size
    assert_respond_to(@object, :tire_size)
  end

  def test_responds_to_spares
    assert_respond_to(@object, :spares)
  end
end

class BicycleTest < MiniTest::Test
  include BicycleInterfaceTest

  def setup
    @bike = @object = Bicycle.new( { tire_size: 0 } )
  end
end

class RoadBikeTest < MiniTest::Test
  include BicycleInterfaceTest

  def setup
    @bike = @object = RoadBike.new
  end
end

