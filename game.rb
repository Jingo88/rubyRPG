class Game
	# 	attr_reader :getName, :getRace, :getGender
	def initialize
	end

	def start
		puts 'Hello Adventurer, type "Create" and then enter to begin making your character'
		create = gets.chomp()
	end

	def getName
		puts "What is your characters name?"
		gets.chomp
	end

	def getRace
		puts "What race is your character?(elf, human, dwarf, halfling)"
		gets.chomp
	end

	def getGender
		puts "What is your character's gender?"
		gets.chomp
	end
end