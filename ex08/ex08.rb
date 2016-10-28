formatter = '%s... %sjjjj %ssafasf %soooo '

puts formatter % [1, 2, 3, 4]
puts formatter % %w(one two three four)
puts formatter % [true, false, false, true]
puts formatter % [formatter, formatter, formatter, formatter]
puts formatter % [
  'as;ldfjka ;j',
  'a;sdlfa;lsfjlk',
  'as;ldfja;lsjf',
  'sdl;fjas;ldfsj'
]

# $ ruby ex08.rb                                                                                                    14:39:08
# 1... 2jjjj 3safasf 4oooo
# one... twojjjj threesafasf fouroooo
# true... falsejjjj falsesafasf trueoooo
# %s... %sjjjj %ssafasf %soooo ... %s... %sjjjj %ssafasf %soooo jjjj %s... %sjjjj %ssafasf %soooo safasf %s... %sjjjj %ssafasf %soooo oooo
# as;ldfjka ;j... a;sdlfa;lsfjlkjjjj as;ldfja;lsjfsafasf sdl;fjas;ldfsjoooo
