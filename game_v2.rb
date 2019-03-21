
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

  def record_winners
    FightersModule::FIGHTERS_TWO_SELECTED.each do |fighter|
      FightersModule::FIGHTERS_WINNERS[fighter] += 1 if fighter.alive
    end
  end

  def display_total_winners
    puts "\n"
    puts "Total Winners from the Game".center(70,"*")
    FightersModule::FIGHTERS_WINNERS.each do |fighter, wins|
      puts "#{fighter.name} has #{wins} wins!"
    end
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
game.fighter_add("cammy")
game.fighter_add("guile")
game.fighter_add("T. Hawk")
game.fighter_add("Vega")
game.fighter_add("E. Honda")
game.fighter_add("Fei Long")
game.fighter_add("Zangief")

#FightersModule.fighters_select_two
#puts FightersModule::FIGHTERS_TWO_SELECTED
#GamesModule.titleScreen
#game.fight
#FightersModule.fighters_stats_two

#GamesModule.titleScreen

#game.fighters_list
#p game.fighters

GamesModule.titleScreen
#game.fight
#game.record_winners
#game.display_total_winners


#ken.attack_kick(ryu)
#ken.attack_kick(ryu)

#@fighters << ken
#@fighters << ryu

#p ken
#p ryu
