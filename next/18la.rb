# 18la.rb
def same(i, j)
  print i.to_s
  print "-#{j}|"
  if i == j
    $z += 1
    case $z
    when 1
      $d1 = i
    when 2
      $d2 = i
    end
  end
end

i = Array.new(4) { Random.rand(6) + 1 }
puts i[0]
puts i[1]
puts i[2]
puts i[3]

$x = 0
$y = 1
$z = 0 # 重覆組數 1
$d1 = 0 # 重覆數字第1組
$d2 = 0 # 重覆數字第2組
$sum = 0 # 1重覆時總合

(0..2).to_a.each do |j|
  (1..3 - j).to_a.each do |k|
    same(i[j], i[j + k])
  end
end

puts $z.to_s + '組重覆'

puts case $z
     when 0
       '重來'
     when 1
       $d1.to_s + '重覆' + '得點：' + $sum.to_s
       i.reject { |a| a == $d1 }.inject(0) { |sum, x| sum + x }
     when 2
       $d1.to_s + '重覆' +
       $d2.to_s + '重覆' + '得點：'
       ($d1 > $d2 ? $d1 * 2 : $d2 * 2).to_s
     when 3
       $d1.to_s + '重覆' + '重來'
end

# $dice = 4
# while $x < $dice
#   # sum += i[$x]
#   while $y < $dice
#     same(i[$x], i[$y])
#     $y += 1
#   end
#   $x += 1
# end

# puts sum

# i.each { |i| puts i==i[i+1] }

# loop do
#   print "Input: "
#   line = gets
#   break if !line or line =~ /^qQ/
#   # ...
# end

# i.each { |i| puts i * 2 }

# 10.times.map{ 20 + Random.rand(11) }
