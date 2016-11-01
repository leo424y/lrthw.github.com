# 特別注意一下，每次運行 print_a_line 時，我們是怎樣傳遞當前的行號資訊的。

input_file = ARGV[0]

def print_all(f)
  puts f.read
end

def rewind(f)
  # Restart from the "1"st word # BCD...
  f.seek(1, IO::SEEK_SET)
end

def print_a_line(line_count, f)
  # If no rewind, in `readline': end of file reached (EOFError)
  puts "#{line_count} #{f.readline}"
end

current_file = File.open(input_file)

puts "First let's print the whole file:"
puts # a blank line

print_all(current_file)

puts "Now let's rewind, kind of like a tape."

rewind(current_file)

puts "Let's print three lines:"

current_line = 1
print_a_line(current_line, current_file)
current_line += 1
print_a_line(current_line, current_file)
current_line += 1
print_a_line(current_line, current_file)
