#require 'bundler'
#Bundler.require  

#require_relative 'lib/game'
require_relative 'lib/player'

puts "-------------------------------"
puts "THE THP CODING FIGHT CLUB"
puts "_/  l_
(҂`_´)
<, ╦╤─ ҉ - -
_/~~|_"
puts "(paskon se fait vachement ièch' quoi)"
puts "-------------------------------"


player1=Player.new("Josiane",10)
player2=Player.new("José",10)
enemies = []
enemies << player1
enemies << player2


puts " \n \n"
puts "~~~~ Quel est ton nom jeune padawan ? ~~~~"
print "> "
@player_name = gets.chomp
@player_name = HumanPlayer.new("#{@player_name}", 100, 1)



while @player_name.life_points >0 && (player1.life_points > 0 || player2.life_points >0)
  puts " "   
  puts " "   
  puts "~~~~ C'est ton tour ! ~~~~"
  puts @player_name.show_state
  puts " "
  
  puts "~~~~ Quelle action veux-tu effectuer ? ~~~~"
    puts "a - chercher une meilleure arme "
    puts "s - chercher à se soigner "
    puts " "
  
  puts "Attaquer un joueur en vue : "
    print "0 - "     
    puts player1.show_state
    print "1 - "     
    puts player2.show_state
    


  puts "~~~~ Alors ? ~~~~"
          action = gets.chomp.to_s
      if action == "a"
          @player_name.search_weapon
      elsif action == "s"
          @player_name.search_health_pack
      elsif action == "0"
          @player_name.attacks(player1)
      elsif action == "1"
          @player_name.attacks(player2)
      elsif action != "a" "s" "0" "1"     
          puts "~~~~ Tu as perdu ton tour, recommence D: ! ~~~~"
      end

      enemies.each do |enemy|  
        unless enemy.life_points <= 0
           puts "~~~~ Tu te fais attaquer ! ~~~~"
           enemy.attacks(@player_name)
        end
      end
  
end

puts "~~~~ La partie est terminée ! ~~~~"
  if @player_name.life_points > 0 
      puts " "
      puts "~~~~ AHMAHZINGUE !! Mais ta princesse est dans un autre château. ~~~~"
      puts " "
  else 
      puts " "
      puts "~~~~ Sorry... try again :/ ~~~~"
      puts " "
  end

binding.pry