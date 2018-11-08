def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  numbers = (1..11).to_a
  random_number = numbers.sample
  return random_number
end

def display_card_total(total)
  puts total
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  value = gets.chomp
  return value
end

def end_game(value)
  puts 'Sorry you lose. Your total was #{value}. Thanks for playing!'
end

def initial_round
  first = deal_card
  second = deal_card
  sum = first + second
  return sum
  display_card_total(sum)
end

def hit?
  prompt user
  response = get_user_input.downcase
  if response == 's'
    return
  elsif response == 'h'
    value = deal_card
    return value
  else
    invalid_command
  end
end

def invalid_command
  puts "Not a valid response."
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  sum = initial_round
  hit?
  loop do
    if sum > 21
      end_game
      break
    else
      hit?
    end
  end
end
