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

module BicycleSubclassTest
  def test_responds_to_post_initialize
    assert_respond_to(@object, :post_initialize)
  end

  def test_responds_to_local_spares
    assert_respond_to(@object, :local_spares)
  end

  def test_responds_to_default_tire_size
    assert_respond_to(@object, :default_tire_size)
  end
end

class StubbedBike < Bicycle
  def default_tire_size
    0
  end

  def local_spares
    { saddle: "painful" }
  end
end

class BicycleTest < MiniTest::Test
  include BicycleInterfaceTest

  def setup
    @bike = @object = Bicycle.new( { tire_size: 0 } )
    @stubbed_bike = StubbedBike.new
  end

  def test_forces_subclassees_to_implement_default_tire_size
    assert_raises(NotImplementedError) { @bike.default_tire_size }
  end

  def test_includes_local_spares_in_spares
    assert_equal(@stubbed_bike.spares,
                 { tire_size: 0,
                   chain: "10-speed",
                   saddle: "painful" } )
  end
end

class RoadBikeTest < MiniTest::Test
  include BicycleInterfaceTest
  include BicycleSubclassTest

  def setup
    @bike = @object = RoadBike.new(tape_color: "red")
  end

  def test_puts_tape_color_in_local_spares
    assert_equal("red", @bike.local_spares[:tape_color])
  end
end

