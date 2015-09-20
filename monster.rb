class Monster
	def initialize(type, atkType, hp)
		@type = type,
		@atkType = atkType
		@hp = hp
		@atkRoll = Math.random
	end
end