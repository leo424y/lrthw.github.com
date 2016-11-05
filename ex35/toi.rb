def prompt
  print '> '
end

def gold_room
  prompt; next_move = gets.chomp
  puts next_move
  puts next_move.class
  puts next_move.to_i
  puts next_move.to_i.class
  if next_move.to_i > 0

    how_much = next_move.to_i

  else

    dead('Man, learn to type a number.')

  end

  if how_much < 50

    puts "Nice, you're not greedy, you win!"

    Process.exit(0)

  else

    dead('You greedy bastard!')

  end
end

def dead(why)
  puts "#{why}  Good job!"

  Process.exit(0)
end

def start
  puts 'You are in a dark room.'

  puts 'How much money do you take?'

  gold_room
end

start
