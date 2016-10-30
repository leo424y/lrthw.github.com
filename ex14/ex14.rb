user = ARGV.first
prompt = '> '

puts "Hi #{user}, I'm the #{$PROGRAM_NAME} script."
puts "I'd like to ask you a few questions."
puts "Do you like me #{user}?"
print prompt
likes = STDIN.gets.chomp

puts "Where do you live #{user}?"
print prompt
lives = STDIN.gets.chomp

puts 'What kind of computer do you have?'
print prompt
computer = STDIN.gets.chomp

puts <<MESSAGE
Alright, so you said #{likes} about liking me.
You live in #{lives}. Not sure where that is.
And you have a #{computer} computer.Nice.
MESSAGE

# ruby ex14.rb                                                                             13:32:18
# Hi , I'm the ex14.rb script.
# I'd like to ask you a few questions.
# Do you like me ?
# > yes
# Where do you live ?
# > taichung
# What kind of computer do you have?
# > mac
# Alright, so you said yes about liking me.
# You live in taichung. Not sure where that is.
# And you have a mac computer.Nice.
