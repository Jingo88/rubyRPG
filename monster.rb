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

goblin = Monster.new("goblin", "sword", 9)
bandit = Monster.new("human", "sword", 11)
vampire = Monster.new("vampire", "teeth", 20)
orc = Monster.new("orc", 'mace', 15)



