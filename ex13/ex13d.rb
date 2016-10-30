first, second, third, fourth = ARGV # 解包 unpack
print 'Input your first word: '
firstword = STDIN.gets.chomp # $
puts "Hello, #{firstword}!"

puts "The script is called:  #{$PROGRAM_NAME}" # $0 > $PROGRAM_NAME
puts "Your first variable is: #{firstword}#{first}"
puts "Your second variable is: #{firstword}#{second}"
puts "Your third variable is: #{firstword}#{third}"
puts "Your fourth variable is: #{firstword}#{fourth}"
# 傳三個以下的參數給你的腳本。當有缺少參數時哪些數值會被使用到？ 先進先出
# 再寫兩個腳本，其中一個接收更少的參數，另一個接收更多的參數。在參數解包時給它們取一些有意義的變數名稱。
# 結合 gets.chomp 和 ARGV 一起使用，讓你的腳本從用戶手上得到更多輸入。
# No such file or directory @ rb_sysopen - 1 (Errno::ENOENT)
# http://stackoverflow.com/questions/27453569/using-gets-gives-no-such-file-or-directory-error-when-i-pass-arguments-to-my/27453657
