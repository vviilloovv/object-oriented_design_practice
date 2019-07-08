class DiameterDouble
  def width
    10
  end
end

module DiameterizableInterfaceTest
  def test_implements_the_diameterizable_interface
    assert_respond_to(@object, :width)
  end
end

class DiameterDoubleTest < MiniTest::Test
  include DiameterizableInterfaceTest

  def setup
    @object = DiameterDouble.new
  end
end

