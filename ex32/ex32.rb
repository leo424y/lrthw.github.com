def p(p)
  puts p.to_s
end
leograce = %w(a b c d)
the_count = [1, 2, 3, 4, 5]

fruits = %w(apples oranges pears apricots)

change = [1, 'pennies', 2, 'dimes', 3, 'quarters']

# this first kind of for-loop goes through an array

for number in the_count

  puts "This is count #{number}"

end

# same as above, but using a block instead

fruits.each do |fruit|
  puts "A fruit of type: #{fruit}"
end

# also we can go through mixed arrays too

# for i in change
#
#   puts "I got #{i}"
#
# end

# 2
change.each { |i| puts "I got #{i}" }

# we can also build arrays, first start with an empty one

elements = []

# then use a range object to do 0 to 5 counts

for i in (0..5)

  puts "Adding #{i} to the list."

  # push is a function that arrays understand

  elements.push(i)

end

# now we can puts them out too

for i in elements

  puts "Element was: #{i}"

end
for j in (0...5)

  puts "Adding #{j} to the list."

  # push is a function that arrays understand

  elements.push(j.to_s + '人')

end

# now we can puts them out too

for j in elements

  puts "Element was: #{j}"

end

leograce.each { |x| puts x.to_s }
p '第一' + leograce.first
p '最後' + leograce.last
p leograce.take(1)
p leograce.take(2)
p leograce.take(3)
p leograce.drop(1)
p leograce.drop(2)
p leograce.length
p '123'.length
p leograce.count
p leograce.insert(3, 'c1')
p leograce.insert(3, 'c2')
p leograce.push('d2')
p leograce.pop
p leograce << 'd3'
p leograce.unshift 'a0'
p leograce.shift
p leograce.delete_at(1)
p leograce.delete('a')
p leograce << nil
p leograce.compact
p leograce
p leograce.compact!
p leograce
p leograce.each { |a| print a += '10', ' ' }
p leograce
p leograce.reverse_each { |a| print a += '10', ' ' }
p leograce
p leograce.map { |a| a += '10' }
p leograce
p leograce.map! { |a| a += '10' }
p leograce
p leograce.select { |a| a == 'c10' }
p leograce
p leograce.reject { |a| a == 'c10' }
p leograce
p leograce.drop_while { |a| a == 'c10' }
p leograce
p leograce.delete_if { |a| a == 'c10' }
p leograce
p leograce.keep_if { |a| a == 'c210' }
p leograce
