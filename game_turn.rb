require_relative "treasure_trove"
require_relative "die"
require_relative "player"
module GameTurn
  
  def self.roll
    @number = rand(1..6)
  end

  def self.take_turn(player)
    case roll
    when 1..2
       player.blam
    when 3..4
       puts "#{player.name} was skipped."
    else
      player.w00t
    end

    treasure = TreasureTrove.random
    player.found_treasure(treasure)
  end
end