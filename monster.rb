class Monster

	attr_accessor :race, :weapon, :hp

	def initialize(race, weapon, hp)
		@race = race
		@weapon = weapon
		@hp = hp
	end

	def atkRoll(x)
		@atkRoll = rand(0..x)		
	end

	def dmgRoll(x)
		@dmgRoll = rand(0..x)
	end
end



