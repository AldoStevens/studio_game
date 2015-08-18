require_relative "spec_helper"
require_relative "player" 
require_relative "treasure_trove"

describe Player do

  before do
   @initial_health = 150
   @player = Player.new("larry", @initial_health)
 end

  before do
    $stdout = StringIO.new
  end

 it "has an initial health" do 
    player = Player.new("larry", 150)

    player.health.should == 150
  end

 it "has a string representation" do
    @player.found_treasure(Treasure.new(:hammer, 50))
    @player.found_treasure(Treasure.new(:hammer, 50))

    @player.to_s.should == "I'm Larry with a health = 150, points = 100, and score = 250."
  end

 it "computes a score as the sum of its health and points" do
    @player.found_treasure(Treasure.new(:hammer, 50))
    @player.found_treasure(Treasure.new(:hammer, 50))

    @player.score.should == 250
  end

 it "increases health by 15 when w00ted" do 
    initial_health = 150
    player = Player.new("larry", initial_health)
    player.w00t

    player.health.should == initial_health + 15
  end

 it "decreases health by 10 when blammed" do 
    initial_health = 150
    player  = Player.new("larry", initial_health)
    player.blam 

    player.health.should == initial_health -10
  end
 
 it "has a capitalized name" do
    player = Player.new("larry", 150)

    player.name.should == "Larry"
 end

 context "with a health greater than 100" do 
    before do 
      @player = Player.new("larry", 150)
  end

  it "is strong" do 
    @player.strong?.should be true 
    end
  end

  context "with a health of or less" do
    before do
      @player = Player.new("larry", 100)
    end

    it "is wimpy" do
      @player.should_not be_strong
    end
  end 

  context "in a collection of players" do 
    before do 
      @player1 = Player.new("moe", 100)
      @player2 = Player.new("larry", 200)
      @player3 = Player.new("curly", 300)

      @players = [@player1, @player2, @player3]
    end

    it "is sorted by decreasing score" do
      @players.sort.should == [@player3, @player2, @player1]
    end
  end

  it "computes points as the sum of all treasure points" do
    @player.points.should == 0

   @player.found_treasure(Treasure.new(:hammer, 50))

    @player.points.should == 50

    @player.found_treasure(Treasure.new(:crowbar, 400))

   @player.points.should == 450

    @player.found_treasure(Treasure.new(:hammer, 50))

    @player.points.should == 500
  end

  it "can be created from a csv string" do 
    player = Player.from_csv("larry, 150")

    player.name.should == "Larry"
    player.health.should == 150
  end
end

