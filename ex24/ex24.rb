# 記得仔細檢查結果，從後往前倒著檢查，把程式碼朗讀出來，在不清楚的位置加上註釋。
# 故意將程式碼改爛，執行並檢查會發生什麼樣的錯誤，並且確認你有能力改正這些錯誤。

puts "Let's practice everything."

puts "You\'d need to know \'bout escapes with \\ that do \n newlines and \t tabs."

poem = <<MULTI_LINE_STRING



\tThe lovely world

with logic so firmly planted

cannot discern \n the needs of love

nor comprehend passion from intuition

and requires an explanation

\n\t\twhere there is none.



MULTI_LINE_STRING

puts '--------------'

puts poem

puts '--------------'

five = 10 - 2 + 3 - 6

puts "This should be five: #{five}"

def secret_formula(started)
  jelly_beans = started * 500

  jars = jelly_beans / 1000

  crates = jars / 100

  [jelly_beans, jars, crates]
end

start_point = 10_000

beans, jars, crates = secret_formula(start_point)

puts "With a starting point of: #{start_point}"

puts "We'd have #{beans} beans, #{jars} jars, and #{crates} crates."

# 打九折啊, 手滑多打/ unterminated regexp meets end of file
# start_point //= 10
start_point /= 10

puts 'We can also do that this way:'

# 多一個 %s,  too few arguments (ArgumentError)
# puts "We'd have %s beans, %s jars, and %s crates. %s" % secret_formula(start_point)
# 少的話就顯示 nil
# puts "We'd have %s beans, %s jars, and %s crates." % secret_formula(start_point)
puts "We'd have %s beans, %s jars, and crates." % secret_formula(start_point)
