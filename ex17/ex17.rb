from_file, to_file = ARGV
script = $PROGRAM_NAME

puts "Copying from #{from_file} to #{to_file}"

indata = (input = File.open(from_file)).read

puts "The input file is #{indata.length} bytes long"

puts "Does the output file exist? #{File.exist? to_file}"
puts 'Ready, hit RETURN to continue, CTRL-C to abort.'
STDIN.gets

output = File.open(to_file, 'w')
output.write(indata)

puts 'Alright, all done.'

output.close
input.close
