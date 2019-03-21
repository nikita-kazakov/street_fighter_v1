=begin
require_relative 'modules'
require_relative 'fighter'

#Break arrays and hashes into several modules where powerups can be stored.
powerup = []

class Game

  attr_accessor :fighters, :two_fighters
  def initialize
    @two_fighters = []
  end

  def fighters_add(name)
    Fighters::FIGHTERS_LIST << Fighter.new("#{name}")
  end

  def fighters_list
    puts "\nFighters List:"
    Fighters::FIGHTERS_LIST.each do |fighter|
      puts "I'm #{fighter.name}"
    end
  end

  def fighters_select
    @two_fighters << @fighters.sample
    @two_fighters << @fighters.sample
  end

  def fighters_selected_stats
    puts "Stats for Selected Fighters:"
    puts "#{fighter_one.name} - Health #{fighter_one.health}"
    puts "#{fighter_two.name} - Health #{fighter_two.health}"
  end

  def fight
    fighters_select


      puts "\nMove # "
      @two_fighters.each do |fighter|
        random_fighter = @two_fighters.sample
        fighter.dead?
        break if fighter.health <=80
        fighter.attack_kick(random_fighter)


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
game.fighters_add("sagat")
game.fighters_add("ryu")
game.fighters_add("blanka")
game.fighters_add("chunli")
game.fighters_add("dhalsim")
game.fighters_add("balrog")
Fighters.fighters_select_two
puts Fighters::FIGHTERS_TWO_SELECTED

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

=end