numb = rand(100)
puts "What number am I thinking? Guess a number between 1 and 100."
guess = gets.chomp.to_f

while true
  if guess < numb
    puts "Too low! Guess again."
    guess = gets.chomp.to_f
  elsif guess > numb
    puts "Too high! Guess again."
    guess = gets.chomp.to_f
  else guess == numb
    puts "You got it, you mindreader!"
    break
  end
end
