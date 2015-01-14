puts "Lets play a guessing game! You have 5 guesses."
puts "Guess a random number between 1 - 100."


comp_guess = Random.rand(100-1)
user_won = false
count = 1
array = []

while count < 6
  user_guess = gets.chomp.to_i
  if user_guess == comp_guess
    puts "You win!"
    break
  elsif user_guess < comp_guess
    puts "Your guess is low."
  else
    puts "Your guess is high."
  end
  count += 1

  if count > 5 && user_won == false
    puts "You have ran out of guesses! You lose!"
  end

  if array.include?(user_guess)
    puts "You just entered same number..."
  end
  array << user_guess
end
