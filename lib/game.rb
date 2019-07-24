require "pry"
class Game
	attr_accessor :@human_player, :@enemies 

@human_player = Human_player.new
enemies = []

	def initialize(enemy, human_player)
		4.each time do
		player=Game.new
		end
		enemie << my_game
		@human_player = Human_player.new("#{human_name}")
	end

	def kill_player
		enemies.each do |enemy|
			when enemy.life_points < 0
				#retirer du tableau
			end	
		end
	end	

	def is_still_ongoing?
		if @human_player.life_points > 0 && enemy.size > 0
			puts "true"
	end

	def show_players
		puts @human_player.life_points
		puts enemy.size
	end

	def menu
		 puts "~~~~ Quelle action veux-tu effectuer ? ~~~~"
    		puts "a - chercher une meilleure arme "
    		puts "s - chercher à se soigner "
    		puts " "
  
  		puts "Attaquer un joueur en vue : "
    		print "0 - "     
    		enemies.each do |enemy|
    			if enemi.life_points > 0
    				puts enemi.show_state
				else 
		    		puts " "
    			end
    		end
    end

    def menu_choice
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
      #Pense à faire appel, dans cette méthode, à la méthode kill_player si jamais un Player est tué par le joueur humain !
    end

    def enemies_attack
    	 enemies.each do |enemy|  
        	unless enemy.life_points <= 0
           	puts "~~~~ Tu te fais attaquer ! ~~~~"
           	enemy.attacks(@player_name)
        	end
      	 end
    end

    def end
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
  	end