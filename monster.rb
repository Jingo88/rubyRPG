class Monster

	attr_accessor :type, :atkType, :hp

	def initialize(type, atkType, hp)
		@type = type,
		@atkType = atkType,
		@hp = hp
	end

	def atkRoll(x)
		@atkRoll = rand(0..x)		
	end

	def dmgRoll(x)
		@dmgRoll = rand(0..x)
	end
end



