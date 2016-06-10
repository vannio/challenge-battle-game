class Player
  HIT_POINTS = 100
  attr_reader :name, :hit_points

  def initialize(name="Player")
    @name = name
    @hit_points = HIT_POINTS
  end

  def receive_damage
    @hit_points -= 10
  end
end
