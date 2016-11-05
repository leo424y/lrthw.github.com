input_file = ARGV[0]

def print_all(f)
  puts f.read
end

def rewind(f)
  f.seek(0, IO::SEEK_SET)
end

def p(p)
  puts p
  puts p.class
end

def print_a_line(line_count, f)
  line_context = f.readline
  p line_context
  p 'x'
  if line_context == 'x'
    puts "分檔#{line_count}"
    out_file = File.new("out#{line_count}.md", 'w')
    puts '新增'
    p line_context
  else
    out_file = File.open("out#{line_count}.md", 'w')
    puts '打開'
    out_file.write(line_context)
    puts '寫檔'
    p line_context
    out_file.close
    puts '關檔'
  end
end

current_file = File.open(input_file)

puts "First let's print the whole file:"

puts # a blank line

current_line = 0

line_count = `wc -l "#{input_file}"`.strip.split(' ')[0].to_i

while current_line < line_count
  print_a_line(current_line, current_file)
  current_line += 1
end
# puts "Now let's rewind, kind of like a tape."
#
# rewind(current_file)
#
# puts "Let's print three lines:"
#
# current_line = 1
#
# print_a_line(current_line, current_file)
#
# current_line += 1
#
# print_a_line(current_line, current_file)
#
# current_line += 1
#
# print_a_line(current_line, current_file)
