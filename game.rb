require_relative 'modules'
require_relative 'fighter'
@fighters =[]

#Create players from list.
Fighters::FIGHTER_NAMES.each do |name|
  @fighters << Fighter.new("#{name}")

end

@fighters.each do |fighter|

  puts fighter

end

puts @fighters[0].name