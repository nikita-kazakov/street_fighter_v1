#Temp Category.
class Game

  attr_accessor :fighters, :two_fighters
  def initialize
    @fighters = []
    @two_fighters = []

  end

  def fighters_add(name)
    @fighters << Fighter.new("#{name}")
  end

  def fighters_list
    puts "\nFighters List:"
    @fighters.each do |fighter|
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