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
