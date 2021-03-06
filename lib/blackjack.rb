def welcome
  puts 'Welcome to the Blackjack Table'
end

def deal_card
  numbers = (1..11).to_a
  random_number = numbers.sample
  random_number
end

def display_card_total(total)
  puts "Your cards add up to #{total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  value = gets.chomp
  return value
end

def end_game(value)
  puts "Sorry, you hit #{value}. Thanks for playing!"
end

def initial_round
  first = deal_card
  second = deal_card
  sum = first + second
  display_card_total(sum)
  return sum
end

def hit?(total)
  prompt_user
  response = get_user_input
  value = 0
  if response == 's'
    return total
  elsif response == 'h'
    value = deal_card
  else
    invalid_command
  end
  total += value
  return total
end

def invalid_command
  puts 'Not a valid response.'
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  total = initial_round
  loop do
    if total > 21
      end_game(total)
      break
    else
      total = hit?(total)
      display_card_total(total)
    end
  end
end
