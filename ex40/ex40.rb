cities = { 'CA' => 'San Francisco',
           'MI' => 'Detroit',
           1 => '1111',
           'FL' => 'Jacksonville' }
cities['NY'] = 'New York'
cities['OR'] = 'Portland'
def find_city(map, state)
  if map.include? state
    map[state]
  else
    'Not found.'
  end
end
# ok pay attention!
cities[:find] = method(:find_city)
loop do
  for i in (0..3)
    p cities[i]
  end
  cities.each { |j| print j }
  p cities.each.class
  p cities
  p cities.class
  print 'State? (ENTER to quit) '
  state = gets.chomp
  break if state.empty?
  # this line is the most important ever! study!
  puts cities[:find].call(cities, state)
end
