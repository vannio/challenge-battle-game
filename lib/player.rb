# Knows its own hitpoints and name
class Player
  attr_reader :name, :hitpoints

  def initialize(name)
    @name = name
    @hitpoints = 100
  end

  def remove_hitpoints(amount)
    @hitpoints -= 20
  end
end
