class DamageCalculator
  def attack(player)
    p player
    player.remove_hitpoints(20)
  end
end
