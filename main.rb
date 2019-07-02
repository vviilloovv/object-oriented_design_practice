require_relative 'gear'
require_relative 'wheel'

@wheel = Wheel.new(26, 1.5)
puts @wheel.circumference

puts Gear.new(chainring: 52, cog: 11, wheel: @wheel).gear_inches

puts Gear.new(chainring: 52, cog: 11).ratio

