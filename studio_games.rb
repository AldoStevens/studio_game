require_relative 'player'
require_relative 'game'

#class Player 
  #attr_reader :health
  #attr_accessor :name

  #def initialize(name, health=100)
  #  @name = name.capitalize
  #  @health = health
 # end 

  #def score
  #  @health + @name.length
  #end

  #def to_s
    #{}"I'm #{@name} with a health of #{@health} and a score of #{score}."
  #end

 # def blam
    #@health -= 10
    #puts "#{@name} got blammed!"
  #end
  
  #def w00t
   # @health += 15
  #  puts "#{@name} got w00ted!"
 # end  
#end
 
player1 = Player.new("moe")
player2 = Player.new("larry", 150)
player3 = Player.new("carly", 125)

knuckleheads = Game.new("knuckleheads")
knuckleheads.add_player(player1)
knuckleheads.add_player(player2)
knuckleheads.add_player(player3)
knuckleheads.play(3)

knuckleheads.print_stats

#players = [player1, player2, player3]

#players.each do |player|
 # player.blam
  #puts player
#end

#puts player1.health
#puts player2.health
#puts player3.health

#players.each do |player|
#puts player.health
#end

#players.each do |player|
 # player.blam
  #player.w00t
  #player.w00t
  #puts player
#end

#players.pop
#player4 = Player.new("shemp", 90)
#players.push(player4)

#puts player1

#puts player2


#puts player3
#puts player3.name
#puts player1.health
#player2.name = "Lawrence"
#puts player2.name

#class Game
  #attr_reader :title

  #def initialize(title)
   # @title = title
    #@players = []
  #end

  #def add_player(a_player)
    #@players.push(a_player)
  #end

  #def play
   # puts "There are #{@players.size} players in #{title}:"
   # @players.each do |player|
    #  puts player
    #end
   # @players.each do |player|
     # player.blam
     # player.w00t
     # player.w00t
    #  puts player
   # end
  #end
#end
