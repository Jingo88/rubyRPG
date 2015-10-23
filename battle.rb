require 'pry'
class Battle

	def initialize
	end

	def turns(initiative)

		@turn = initiative.sort_by{|character,speed| speed}.reverse

		@turn.each do |character|
			if character[0] != "player"
				puts "it's a goblins turn"
			elsif character[0] == "player"
				puts "Now it's your turn what do you want to do?"
			end
		end

#who's turn is it? if it is the goblins turn they should either attack or flee
#if it is the players turn you need to allow the player to choose attack or flee
#if it is the players turn they need to choose which goblin to attack
		# binding.pry
	end


end
