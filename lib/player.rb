require "pry"
class Player
attr_accessor :player_name, :life_points


	def initialize(player_name, life_points)
		@player_name = player_name
		@life_points = life_points
	end


	def show_state
		puts "#{@player_name} a #{@life_points} point(s) de vie."
	end


	def attacks(target)
		puts  "#{player_name} attaque le joueur #{target.player_name}"
		hit = compute_damage
		puts "> il lui inflige #{hit} point(s) de dommages."
		life_points = target.gets_damage(hit)
	end

				  			def compute_damage  #Détermine aléatoirement les pv en moins
    								return rand(1..6)
  							end

  	def gets_damage(damage)
  		@life_points = @life_points - damage

		if @life_points <= 0
			puts "Le joueur #{@player_name} a été tué !"
			puts " "
		end
	end

end 


class HumanPlayer < Player
attr_accessor :player_name, :weapon_level #integer détermine lvl de l'arme

	def initialize(player_name, life_points, weapon_level)
		@life_points = 100
		@weapon_level = 1

		super(player_name, life_points)
	end


	def show_state
		puts "#{player_name} a #{@life_points} point(s) de vie et une arme de niveau #{@weapon_level}."
	end


	def compute_damage
    	rand(1..6) * @weapon_level
  	end


  	def search_weapon
  		found_weapon = rand(1..6)
  		if found_weapon > @weapon_level
  		   @weapon_level = found_weapon
			puts "Tu as trouvé une arme de niveau #{found_weapon} !"
  			puts " > Wololololo ! Elle est meilleure que ton arme actuelle : tu la prends bien sûr ;D !"
  		else 
  			puts "Tu as trouvé une arme de niveau #{found_weapon} !"
  			puts " > Nomdediou ! Elle n'est pas mieux que ton arme actuelle :'( !"
  		end
  	end

	def attacks(target)
		puts  "#{player_name} attaque le joueur #{target.player_name}"
		hit = compute_damage*@weapon_level
		puts "> il lui inflige #{hit} point(s) de dommages."
		life_points = target.gets_damage(hit)
	end

	def search_health_pack
		health_pack = rand(1..6) 
		if health_pack  == 1
			puts " > Tu fouilles ton froc, mais il n'y a rien :( !"
		elsif health_pack == (2..5)
			@life_points += 50
			@life_points > 100 ? @life_points = 100 : @life_points 
			puts " > Tu fouilles tes chaussures, tu as trouvé un pack de bières avec pour effet +50 points de vie :D !"
		else 
			@life_points += 80
			@life_points > 100 ? @life_points = 100 : @life_points 
			puts " > Tu fouilles tout en pro-fon-deur... Waouh ! Tu as trouvé une potion qui te rajoute 80 points de vie ;D !"
		end 
	end
		
end	


#Question : 
#Que signifie : "@life_points > 100 ? @life_points = 100 : @life_points "
#Pourquoi @ sur weapon_level et non found_weapon ?