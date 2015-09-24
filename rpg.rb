require 'pry'
require_relative('player.rb')
require_relative('monster.rb')
require_relative('travel.rb')
require_relative('battle.rb')
require_relative('game.rb')

Game = Game.new
Travel = Travel.new
Battle = Battle.new

orc = Monster.new("orc", 'mace', 15, 6)

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
	puts Travel.castle
	vampire = Monster.new("vampire", "teeth", 20, 7)

elsif travel =="TWO"
	puts Travel.forest
	puts "Two goblins are standing next to a fire, the children are tied to a tree nearby. The goblins take notice of you and grab their scimitars. ROLL FOR INITIAIVE (You can type roll now...)"
	goblinOne = Monster.new("goblin", "sword", 9, 4)
	goblinTwo = Monster.new("goblin", "sword", 9, 4)

	init = gets.chomp.downcase

	if init == "roll"
		playInit = player.initiative
		gobOneInit = goblinOne.initiative
		gobTwoInit = goblinTwo.initiative

		puts Battle.turns({
			"player" => playInit,
			"goblinOne" => gobOneInit,
			"goblinTwo" => gobTwoInit
			})	

		
	else
		puts "Please just type roll and then press enter"
	end
elsif travel =="THREE"
	puts Travel.bridge
	banditOne = Monster.new("human", "sword", 11, 5)
	banditTwo = Monster.new("human", "sword", 11, 5)
else
	puts "Sorry that isn't a choice, please enter One, Two, or Three"
end

# player.attack(goblin)

binding.pry
