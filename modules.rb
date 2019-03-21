module FightersModule

  #list of fighters
  FIGHTERS_LIST = []
  FIGHTERS_TWO_SELECTED = []

  FIGHTERS_WINNERS = Hash.new(0)



  def self.fighters_list_all
    FIGHTERS_LIST.each do |fighter|
      puts fighter
    end
  end

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

  def self.reset_health

    FIGHTERS_TWO_SELECTED.each do |fighter|
      fighter.health = 100
    end

  end


  def self.dead_player_remove

    FIGHTERS_TWO_SELECTED.each do |fighter|
      FIGHTERS_LIST.delete(fighter) if fighter.alive == false
      FIGHTERS_TWO_SELECTED.delete(fighter) if fighter.alive == false
    end

  end

  def self.game_over?

    if FIGHTERS_LIST.size == 1 then
      puts "Game Over!"
      puts "#{FIGHTERS_LIST[0].name} is the last person standing!"
    end

  end


end



module GamesModule

  def self.game_start(rounds)
    FightersModule.game_over?
    FightersModule.fighters_select_two
    FightersModule.reset_health
    1.upto(rounds) do

      FightersModule::FIGHTERS_TWO_SELECTED.shuffle!
      FightersModule::FIGHTERS_TWO_SELECTED[0].attack_move_random(FightersModule::FIGHTERS_TWO_SELECTED[1])
      #FightersModule::FIGHTERS_TWO_SELECTED[0].attack_punch(FightersModule::FIGHTERS_TWO_SELECTED[1])

      break if FightersModule::FIGHTERS_TWO_SELECTED[0].dead?
      break if FightersModule::FIGHTERS_TWO_SELECTED[1].dead?




    end

  end

  def self.titleScreen
    game = Game.new

    loop do

      puts "Welcome to text-based Street Fighter".center(50, "*")
      puts "Select Options:"
      puts "1 - Start Game"
      puts "2 - Add Players"
      puts "(type 'exit' to quit)"

      #option = 1
      option = gets.chomp.to_i
      case option

      when 1
        game.fight
        game.record_winners
        FightersModule.fighters_list_all
        game.display_total_winners

      when 2
        FightersModule.fighters_list_all
        game.display_total_winners

      end

    end
  end

end



if __FILE__ == $0

end