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

#use this array for multiple enemies during battle
monstarr = [];

puts "Hello Adventurer, would you like to start your quest?(yes or no)"

start = gets.chomp

if start == "yes"
	puts "First we must make your character\n"
	name = Game.getName
	race = Game.getRace
	gender = Game.getGender
	elsif start == "no"
		puts "Until we meet again"
		return
	else
		puts "I'm sorry you must type in yes or no\n"		
end

player = Player.new(name, race, gender)

puts "Hello #{name}, you are currently in the town of Newer Yorkshire. You find yourself weilding a #{player.weapon} and wearing #{player.armor}. Your current  stats are \n\n #{player.stats}  \n\nThe town of Newer Yorkshire has fallen in grave trouble. Princess Nicki Minaj has been kidnapped. Not only that but the innkeepers children Little Bow Wow and Little Romeo have gone missing. They were last seen stick fighting in the forest. Not only that but businesses have gone under because travelers are being turned away from Newer Yorkshire due to a group of bandits known as Nuevo Ocho Degrees hovering around the main bridge. Which task would you like to aid the town with first?\n\n"

puts "Enter One to go to the black castle to save Princess Nicki Minaj\n\n"

puts "Enter Two go to the black forest to find the innkeepers missing children\n\n"

puts "Enter Three to free the town bridge from a group of bandits\n\n"

travel = gets.chomp.upcase

if travel == "ONE"

elsif travel =="TWO"

elsif travel =="THREE"

else
	puts "Sorry that isn't a choice, please enter One, Two, or Three"
end

player.attack(goblin)

binding.pry
