require 'pry'
class Battle

	def initialize
	end

	def turns(initiative)

		@turn = initiative.sort_by{|character,speed| speed}.reverse

		if @turn[0][0] != "player"
			puts "it's a goblins turn"
		end
		binding.pry
		# @monstarr = []
		# @monstarr.push(player)
		# @length = enemies.length
		# @length.times do
		# 	@monstarr.push(enemies.pop)
		# end
		# return @monstarr.sort.reverse
	end


end
