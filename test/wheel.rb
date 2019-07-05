class Wheel
  attr_reader :rim, :tire
  def initialize(rim, tire)
    @rim = rim
    @tire = tire
  end

  def diameter
    # タイヤはリムの周りを囲むため2倍する
    rim + (tire * 2)
  end

  def circumference
    diameter * Math::PI
  end
end

