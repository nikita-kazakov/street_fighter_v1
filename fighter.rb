

class Fighter

  attr_accessor :name, :health

  def initialize(name)
    @name = name.capitalize
    @health = 100
    @alive = true
    @attack_moves = {
        :punch => 10,
        :kick => 5,
        :special_move => 20,
        :uppercut => 5
    }

  end

  def attack_punch(fighter)
    fighter.health -= 10
    puts"#{fighter.name} got punched! Health decreased by 10."
  end

  def attack_kick(fighter)
    fighter.health -= 20
    puts"#{fighter.name} got kicked!. Health decreased by 20."
  end

  def attack_move_random(fighter)
    random_move = @attack_moves.to_a.sample
    fighter.health -= random_move.last
    puts "#{fighter.name} got #{random_move.first}-ed. Health decreased by #{random_move.last}"

  end

  def dead?
    if health <= 0
      @alive = false
      puts "#{name} is DEAD!"
    end
    @alive == false
  end

  def to_s
    "I'm #{@name}. The player object."
  end

end