first, second, third, fourth = ARGV # 解包 unpack
puts "The script is called:  #{$PROGRAM_NAME}" # $0 > $PROGRAM_NAME
puts "Your first variable is: #{first}"
puts "Your second variable is: #{second}"
puts "Your third variable is: #{third}"
puts "Your fourth variable is: #{fourth}"

# 傳三個以下的參數給你的腳本。當有缺少參數時哪些數值會被使用到？ 先進先出
# 再寫兩個腳本，其中一個接收更少的參數，另一個接收更多的參數。在參數解包時給它們取一些有意義的變數名稱。
# 結合 gets.chomp 和 ARGV 一起使用，讓你的腳本從用戶手上得到更多輸入。
