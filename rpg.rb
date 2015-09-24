require 'pry'
require_relative('player.rb')
require_relative('monster.rb')
require_relative('travel.rb')
require_relative('game.rb')

Game = Game.new

goblin = Monster.new("goblin", "sword", 9, 4)
bandit = Monster.new("human", "sword", 11, 5)
vampire = Monster.new("vampire", "teeth", 20, 7)
orc = Monster.new("orc", 'mace', 15, 6)

monstarr = [];

puts "Hello Adventurer, would you like to start your quest?(yes or no)"

start = gets.chomp

if start == "yes"
	puts "First we must make your character"
	name = Game.getName
	race = Game.getRace
	gender = Game.getGender
	elsif start == "no"
		puts "Until we meet again"
		return
	else
		puts "I'm sorry you must type in yes or no"		
end

player = Player.new(name, race, gender)

puts "Hello #{name}, you begin in the town of Newer Yorkshire. You begin with a  #{player.weapon} and wearing #{player.armor}. Your stats look like this \n\n #{player.stats}  yatta yatta you have to go fight a monster\n\n"

puts "Enter One to go to the castle to save the princess\n\n"

puts "Enter Two go to the black forest to find the missing children\n\n"

puts "Enter Three to free the town bridge from a group of bandits\n\n"

travel = gets.chomp

player.attack(goblin)

binding.pry
