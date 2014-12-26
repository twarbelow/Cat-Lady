def evil_puppy_phrase(evil_puppy_number) 
	if evil_puppy_number > 1
		"#{evil_puppy_number} puppies will be sent to you. Try again!"
	else
		"#{evil_puppy_number} puppy will be sent to you. Try again!"
	end
end
def final_evil_puppies(evil_puppy_number)
	if evil_puppy_number > 1 || evil_puppy_number == 0
		"#{evil_puppy_number} puppies"
	else
		"#{evil_puppy_number} puppy"
	end
end
system('say -v "Bad News" "How many cats does the cat lady have? Please be aware that one puppy will be sent to you for every incorrect answer!"')
num_beeba_horde = rand(1..10)
how_many_blompostomous_are_there=gets.chomp.to_i
evil_puppy_number=0
until num_beeba_horde == how_many_blompostomous_are_there
	break if how_many_blompostomous_are_there > 10 
	if num_beeba_horde < how_many_blompostomous_are_there
		system('say -v "Pipe Organ" "too big!"')
	else 
		system('say -v Whisper "too small!"')
	end
	evil_puppy_number +=1
	system("say -v Zarvox '#{evil_puppy_phrase(evil_puppy_number)}'")
	how_many_blompostomous_are_there=gets.chomp.to_i
end
if how_many_blompostomous_are_there > 10
	system('say -v "Albert" "You have offended the cat lady by guessing a number larger than 10. 50 evil puppies will be sent to you." ')
else
	voice="Good"
	system("say -v #{voice} 'You guessed correctly! Your #{num_beeba_horde} kitties and #{final_evil_puppies(evil_puppy_number)} will be sent to you by the end of the week!'")
end
