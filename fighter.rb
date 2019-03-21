

class Fighter

  attr_accessor :name, :health

  def initialize(name)
    @name = name.capitalize
    @health = 100

  end

  def attack_punch(fighter)
    fighter.health -= 10
    puts"#{fighter.name} got punched! Health decreased by 10."
  end

  def attack_kick(fighter)
    fighter.health -= 20
    puts"#{fighter.name} got kicked!. Health decreased by 20."
  end

  def dead?
    if health <0
      puts "#{@name} Died"
    end
  end

  def to_s
    "I'm #{@name}. The player object."
  end

end