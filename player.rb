class Fighter

  attr_accessor :name, :health

  def initialize(name)
    @name = name
    @health = 100
  end

  def attack_punch(player)
    player.health - 10
  end

  def attack_kick(player)
    player.health - 20
  end

  def death?
    health <= 0
  end

end