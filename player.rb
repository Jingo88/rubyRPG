require 'pry'
class Player 

	attr_accessor :name, :race, :gender, :level, :weapon, :armor, :hp, :stats

	def initialize(name, race, gender)
		@name = name
		@race = race
		@gender = gender
		@level = 1
		@weapon = "short sword"
		@armor = "leather armor"
		@hp = 10
		@stats = {
			:strength => 10,
			:dexterity => 10,
			:constitution => 10,
			:intelligence => 10,
			:wisdom => 10,
			:charisma => 10
		}
	end

	def attack(y)
		@weapon 
		if @weapon == "short sword"
			if atkRoll(8) > y.armor
				dmg = dmgRoll(8)
				puts "You hit them for #{dmg}"
			end
		end
	end

	def atkRoll(x)
		@atkRoll = rand(0..x)
	end

	def dmgRoll(x)
		@dmgRoll = rand(0..x)
	end

end