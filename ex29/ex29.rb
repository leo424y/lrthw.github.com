people = 20
cats = 30
dogs = 15

puts 'Too many cats! The world is doomed!' if people < cats
puts 'PEACE' if people > cats
puts 'The world is drooled on' if people < dogs
puts 'The world is dry' if people > dogs
dogs += 5
puts '>=' if people >= dogs
puts '<=' if people <= dogs
puts 'you are dog' if people == dogs
