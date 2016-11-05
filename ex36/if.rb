def prompt
  print '> '
end

def wait_next_move
  prompt
  next_move = gets.chomp
  next_move
end

def replay
  p 'replay? y/n'
  prompt; next_move = gets.chomp
  if next_move == 'y'
    start
  else
    Process.exit(0)
  end
end

def next_move_abc(next_move)
  p next_move
  p next_move.class
  p next_move.to_s
  p next_move.to_s.class
  if next_move.to_s.include? 'love '
    how_much = next_move.to_s
  else
    dead('Man, you do not love me? go hell.')
  end
  if how_much.to_s.include? 'very'
    p 'Nice, you love me very much, you win!'
    Process.exit(0)
  else
    dead('Not very? go hell')
  end
end

def next_move_number(next_move)
  if next_move.to_i > 0
    how_much = next_move.to_i
  else
    dead('Man, learn to type a number.')
  end
  if how_much < 50
    p "Nice, you're not greedy!"
  else
    dead('You greedy bastard!')
  end
end

def gold_room
  p 'How many friends do you want?'
  next_move = wait_next_move
  # p next_move
  # p next_move.class
  # p next_move.to_i
  # p next_move.to_i.class
  next_move_number(next_move)
  p 'Do you love me?'
  next_move = wait_next_move
  next_move_abc(next_move)
end

def dead(why)
  p "#{why}  Good job!"
  # Process.exit(0)
  replay
end

def start
  p 'Love Game Start~~'
  gold_room
end
start
