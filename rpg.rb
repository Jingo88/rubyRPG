#User should make a character
#User should fight monsters
#User should be able to travel
#User should live or die
#User should have weapons / armor / statistics
#class Game = having the intro and story line
#class User = having the user input their characters information and housing their characters information
#Define a bunch of classes and then run program
#Classes to define - game / user / monster
#Battle Class

require 'pry'
require_relative('player.rb')
require_relative('monster.rb')
require_relative('game.rb')


Game = Game.new
goblin = Monster.new("goblin", "sword", 9)
bandit = Monster.new("human", "sword", 11)

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

puts "Hello #{name}, you begin in the town of Newer Yorkshire. You begin with a  #{player.weapon} and wearing #{player.armor}. Your stats look like this #{player.stats}  yatta yatta you have to go fight a monster"







binding.pry

