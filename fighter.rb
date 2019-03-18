

class Fighter

  attr_accessor :name, :health

  def initialize(name)
    @name = name.capitalize
    @health = 100

  end



  def attack_punch(fighter)
    fighter.health -= 10
    puts"#{name} got punched!"
  end

  def attack_kick(fighter)
    fighter.health -= 20
    puts"#{fighter.name} got kicked!. Health: #{fighter.health}"
  end

  def dead?
    puts "DEAD!" if health <= 0

  end

  def to_s
    "I'm #{@name}. The player object."
  end

end