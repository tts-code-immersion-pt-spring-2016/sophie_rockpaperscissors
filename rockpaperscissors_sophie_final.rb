options = ["rock","paper","scissors"]
puts "Let's play rock paper scissors! We will be playing 3 rounds. The best of 3 wins. Good luck!"
computer_won = 0
player_won = 0
playagain = true

sleep (1)
#loop
while playagain == true do
while computer_won + player_won < 3 do

	computer = options.sample
	puts "Please choose rock, paper or scissors:"
	player = gets.chomp.downcase

	# if player plays rock
	if player == options[0]
		# if computer plays rock
		if computer == options[0]
			puts "Computer played: #{computer}"
			puts "Uh oh it's a tie, this round doesn't count!"
			sleep (1)
		# if computer plays paper
		elsif computer == options[1]
			puts "Computer played: #{computer}"
			puts "Oops you lost this round!"
			computer_won += 1
			if computer_won + player_won <=2
				puts "The current score is:"
				puts "Computer: #{computer_won}"
				puts "You: #{player_won}"
			end
			sleep (1)
		# if computer plays scissors
		elsif computer == options[2]
			puts "Computer played: #{computer}"
			puts "You won this round!"
			player_won += 1
			if computer_won + player_won <=2
				puts "The current score is:"
				puts "Computer: #{computer_won}"
				puts "You: #{player_won}"
			end
			sleep (1)

		end
	# if player plays paper
	elsif player == options[1]
		# if computer plays rock
		if computer == options[0]
			puts "Computer played: #{computer}"
			puts "You won this round!"
			player_won += 1
			if computer_won + player_won <=2
				puts "The current score is:"
				puts "Computer: #{computer_won}"
				puts "You: #{player_won}"
			end
			sleep (1)
		# if computer plays paper
		elsif computer == options[1]
			puts "Computer played: #{computer}"
			puts "Uh oh it's a tie, this round doesn't count!"
			sleep (1)
		# if computer plays scissors
		elsif computer == options[2]
			puts "Computer played: #{computer}"
			puts "Oops you lost this round!"
			computer_won += 1
			if computer_won + player_won <=2
				puts "The current score is:"
				puts "Computer: #{computer_won}"
				puts "You: #{player_won}"
			end
			sleep (1)
		end
	# if player plays scissors
	elsif player == options[2]
		# if computer plays rock
		if computer == options[0]
			puts "Computer played: #{computer}"
			puts "Oops you lost this round!"
			computer_won += 1
			if computer_won + player_won <=2
				puts "The current score is:"
				puts "Computer: #{computer_won}"
				puts "You: #{player_won}"
			end
			sleep (1)
		# if computer plays paper
		elsif computer == options[1]
			puts "Computer played: #{computer}"
			puts "You won this round!"
			player_won += 1
			if computer_won + player_won <=2
				puts "The current score is:"
				puts "Computer: #{computer_won}"
				puts "You: #{player_won}"
			end
			sleep (1)
		# if computer plays scissors
		elsif computer == options[2]
			puts "Computer played: #{computer}"
			puts "Uh oh it's a tie, this round doesn't count!"
			sleep (1)
		end

	# if player plays anything else
	else
		puts "Are you sure you spelled that right?"
		sleep (1)

	end
end

puts "Please wait for the results... *drumroll*"
sleep (1)
puts "Computer won #{computer_won} out of 3 rounds"
puts "You won #{player_won} out of 3 rounds"
if computer_won > player_won
	puts "You lost the game, sorry!"
else
	puts "You won the game! Congratulations!"
end

puts "Would you like to play again? Please say yes or no."
play=gets.chomp.downcase
if play == "yes"
	puts "Let's play again!"
	playagain = true
	computer_won = 0
	player_won = 0
elsif play == "no"
	puts "Thanks for playing!"
	playagain = false
else
	puts "I take that as a no. Thanks for playing!"
	playagain = false
end
end
