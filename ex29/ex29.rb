people = 20
cats = 30
dogs = 15

puts 'Too many cats! The world is doomedA!' if people < cats
puts 'Too many cats! The world is doomedA1!' if people != cats
puts 'Too many cats! The world is doomedB!' unless people > cats # if not = unless
puts 'Too many cats! The world is doomedC!' if people && cats ## and 就是&&
puts 'Too many cats! The world is doomedD!' if people || cats ## or 就是 ||
puts 'PEACE' if people > cats
puts 'The world is drooled on' if people < dogs
puts 'The world is dry' if people > dogs
dogs += 5
puts '>=' if people >= dogs
puts '<=' if people <= dogs
puts 'you are dog' if people == dogs
