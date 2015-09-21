class Monster

	attr_accessor :race, :weapon, :hp, :armor

	def initialize(race, weapon, hp, armor)
		@race = race
		@weapon = weapon
		@hp = hp
		@armor = armor
		@dead = false
	end

	def atkRoll(x)
		@atkRoll = rand(0..x)		
	end

	def dmgRoll(x)
		@dmgRoll = rand(0..x)
	end
end
