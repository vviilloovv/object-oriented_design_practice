class RevealingReferences
  attr_reader :wheels
  def initialize(data)
    @wheels = wheelify(data)
  end

  def diameters
    wheels.map { |wheel| wheel.rim + (wheel.tire * 2) }
  end

  Wheel = Struct.new(:rim, :tire)
  def wheelify(data)
    data.map { |cell| Wheel.new(cell[0], cell[1]) }
  end
end

