require_relative 'player'

class Game

  attr_reader :players

  def initialize(player1, player2)
    @players = [player1, player2]
    @current_player = player1
  end

  def self.current
    @game
  end

  def self.start(player1=Player.new, player2=Player.new)
    @game = new(player1, player2)
  end

  def attack(player)
    player.receive_damage
    switch
  end

  def heal
    @current_player.heal_damage
    switch
  end

  private

  def switch
    @players.reverse!
    @current_player = @players.first
  end
end
