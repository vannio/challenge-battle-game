class Player
  HIT_POINTS = 100
  attr_reader :name, :hit_points, :picture

  def initialize(name="Player", picture=nil)
    @name = name
    @picture = picture
    @hit_points = HIT_POINTS
  end

  def receive_damage
    @hit_points -= Kernel.rand(1..10)
  end
end
