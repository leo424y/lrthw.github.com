def add(a, b)
  puts "啾  #{a} +#{b}"
  a + b
end

def substract(a, b)
  puts "剪  #{a} - #{b}"
  a - b
end

def multiply(a, b)
  puts "爆  #{a} * #{b}"
  a * b
end

def divide(a, b)
  puts "滅  #{a} / #{b}"
  a / b
end

puts '算了吧'

age = add(30, 5)
height = substract(78, 4)
weight = multiply(90, 2)
iq = divide(100, 2)

puts "Age #{age}, Height: #{height}, Weight: #{weight}, IQ: #{iq}"

puts 'Here is a puzzle.'

what = add(age, substract(height, multiply(weight, divide(iq, 2))))

puts "That becomes: #{what} Can you do it by hand?"
