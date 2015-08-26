numb = rand(100)
numb_guess = Array.new
puts "What number am I thinking? Guess a number between 1 and 100."
guess = gets.chomp.to_f
numb_guess << guess

while numb_guess.length < 5
  if guess < numb
    puts "Too low! Guess again."
    guess = gets.chomp.to_f
    numb_guess << guess
  elsif guess > numb
    puts "Too high! Guess again."
    guess = gets.chomp.to_f
    numb_guess << guess
  else guess == numb
    puts "You got it, you mindreader!"
    break
  end
end
puts "Sorry, too many guesses."
