module FightersModule

  #list of fighters
  FIGHTERS_LIST = []
  FIGHTERS_TWO_SELECTED = []

  def self.fighters_select_two
    #A unique array of fighters
    until FIGHTERS_TWO_SELECTED.uniq.size == 2 do
      FIGHTERS_TWO_SELECTED << FIGHTERS_LIST.sample
    end
    FIGHTERS_TWO_SELECTED.uniq!
  end

  def self.fighters_stats_two
    puts "\n****Fighter Stats****"
    FIGHTERS_TWO_SELECTED.each do |fighter|
      puts "#{fighter.name}. Health: #{fighter.health}."
    end

  end



end

module GamesModule

  def self.game_start(rounds)
    FightersModule.fighters_select_two
    1.upto(rounds) do

      FightersModule::FIGHTERS_TWO_SELECTED.shuffle!
      FightersModule::FIGHTERS_TWO_SELECTED[0].attack_move_random(FightersModule::FIGHTERS_TWO_SELECTED[1])
      #FightersModule::FIGHTERS_TWO_SELECTED[0].attack_punch(FightersModule::FIGHTERS_TWO_SELECTED[1])

      break if FightersModule::FIGHTERS_TWO_SELECTED[0].dead?
      break if FightersModule::FIGHTERS_TWO_SELECTED[1].dead?



    end

  end

  def self.titleScreen
    puts "Welcome to text-based Street Fighter".center(50, "*")
    puts "Select Options:"
    puts "1 - Start Game"
    puts "2 - Add Players"
    puts "(type 'exit' to quit)"

    option = gets.chomp.to_i
    case option
    when 1
      game = Game.new
      game.fight

    when 2
      FightersModule::FIGHTERS_LIST.each do |fighter|
        puts "fighter"
      end
    end



  end

end



if __FILE__ == $0

end