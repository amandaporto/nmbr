num = rand(100)
puts num
guess_array = Array.new

def input(message, array)
  puts message
  guess_left(array)
  input_guess = gets.chomp.to_f
  array << input_guess

  return input_guess
end

def guess_left(array)
  left = array.length
  puts "You are on guess #{left} of 5." unless left == 0
end

guess = input("What number am I thinking? Guess a number between 1 and 100.", guess_array)

while guess_array.length < 5
  if guess < num
    guess = input("Too low!", guess_array)
  elsif guess > num
    guess = input("Too high!", guess_array)
  else guess == num
    puts "You got it, you mindreader!"
    exit
  end
end

puts "Sorry, no more tries."
