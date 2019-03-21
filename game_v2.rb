
require_relative 'modules'
require_relative 'fighter'

#Version 2 of the game.  Storing things in Modules.

class Game

  attr_accessor :fighters
  def initialize
  end

  def fighter_add(name)
    FightersModule::FIGHTERS_LIST << Fighter.new("#{name}")
  end

  def fighters_list
    puts "\nFighters List:"
    FightersModule::FIGHTERS_LIST.each do |fighter|
      puts "I'm #{fighter.name}"
    end
  end

  def fight
    GamesModule.game_start(25)
  end


    #@fighter_one.attack_kick(@fighter_two)
    #@fighter_two.attack_kick(@fighter_one)
    #@fighter_two.dead?
    #fighters_selected_stats

end

#ken = Fighter.new("ken")
#ryu = Fighter.new("ryu")

game = Game.new()
game.fighter_add("sagat")
game.fighter_add("ryu")
game.fighter_add("blanka")
game.fighter_add("chunli")
game.fighter_add("dhalsim")
game.fighter_add("balrog")
#FightersModule.fighters_select_two
#puts FightersModule::FIGHTERS_TWO_SELECTED
#GamesModule.titleScreen
#game.fight
#FightersModule.fighters_stats_two

GamesModule.titleScreen

#game.fighters_list
#p game.fighters

#game.fight
#p game.two_fighters


#ken.attack_kick(ryu)
#ken.attack_kick(ryu)

#@fighters << ken
#@fighters << ryu

#p ken
#p ryu
