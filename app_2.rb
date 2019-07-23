  
require_relative 'lib/game'
require_relative 'lib/player'

puts "-------------------------------"
puts "THE THP CODING FIGHT CLUB"
puts "_/  l_
(҂`_´)
<, ╦╤─ ҉ - -
_/~~|_"
puts "(paskon se fait vachement ièch' quoi)"
puts "-------------------------------"

enemies = []
player1=Player.new("Josiane",10)
player2=Player.new("José",10)
enemies << player1
enemies << player2


puts " \n \n"
puts "Quel est ton nom jeune padawan ?"
print "> "
@player_name = gets.chomp
@player_name = HumanPlayer.new(@player_name, 100, 1)

puts " "
puts " "
puts " LET'S RANDOMLY FIGHT (yolo) "
   puts @player_name.show_state
   puts " Quelle action veux-tu effectuer ?"
   puts "a - chercher une meilleure arme "
   puts "s - chercher à se soigner "
   
   puts "Attaquer un joueur en vue :"
    puts "0" 
    print player1.show_state
    puts "1" 
    print player2.show_state
    


   puts "Alors ?"
      action = gets.chomp.to_s
   if action == "a"
      @player_name.search_weapon
   elsif action == "s"
      @player_name.search_health_pack
   elsif action == "0"
      @player_name.attacks(player1)
   elsif action == "1"
      @player_name.attacks(player2)
   end

binding.pry