# http://lrthw.github.io/ex10/

tabby_cat = "\tI'm tabbed in."
persian_cat = "I'm split\non a line."
backslash_cat = "I'm \\ a  \\ cat. \\\\\\\| oooo."

fat_cat = <<SDF
I'll do a list:
\t* Cat food
\t* Fishies
\t* Catnip\n\t* Grass
SDF

puts tabby_cat
puts persian_cat
puts backslash_cat
puts fat_cat

#
# ← Hello world | Here documents →
# 跟 Python, Java, 與 .NET Framework一樣, Ruby 也有內建字串類別。
#
# String literals
# 建立一個字串可以用單引號或雙引號把字包住，可以參考一下"hello world"這個範例。 這個範例程式碼示範了用單引號跟雙引號包住字串的兩種方法。
#
# puts 'Hello world'
# puts "Hello world"
# Being able to use either single or double quotes is similar to Perl, but different from languages such as C and Java, which use double quotes for string literals and single quotes for single characters.
#
# 那麼單引號跟雙引號在Ruby中有什麼不一樣的呢？在上面的程式碼中並沒有不同，然而看看底下的程式碼吧：
#
# puts "Betty's pie shop"
# puts 'Betty\'s pie shop'
# Because "Betty's" contains an apostrophe, which is the same character as the single quote, in the second line we need to use a backslash to escape the apostrophe so that Ruby understands that the apostrophe is in the string literal instead of marking the end of the string literal. The backslash followed by the single quote is called an escape sequence.
#
# 單引號
# 單引號只允許兩個跳脫字元
#
# \' – 單引號
# \\ – 單斜線
# 雙引號
# 雙引號允許了比單引號更多的跳脫字元。他也允許你嵌入變數或者Ruby程式碼在一個字串內
#
# 跳脫字元
# 下面是一些在雙引號內常用的跳脫字元：
#
# \" – 雙引號
# \\ – 單斜線
# \a – 警示音
# \b – 刪除鍵的信號
# \r – 歸位
# \n – 換行
# \s – 空格
# \t – Tab鍵
# 試試看這些範例，可以幫助你更加了解跳脫字元的用處：
#
# puts "Hello\t\tworld"
#
# puts "Hello\b\b\b\b\bGoodbye world"
#
# puts "Hello\rStart over world"
#
# puts "1. Hello\n2. World"
# 執行結果：
#
# $ double-quotes.rb
# Hello		world
# Goodbye world
# Start over world
# 1. Hello
# 2. World
# 注意換行的跳脫字元很單純的就是換新的一行。
#
# \a可以產生警示音，這是一個控制字元。It does not represent a letter of the alphabet, a punctuation mark, or any other written symbol. Instead, it instructs the terminal emulator (called a console on Microsoft Windows) to "alert" the user. It is up to the terminal emulator to determine the specifics of how to respond, although a beep is fairly standard. Some terminal emulators will flash briefly.
#
# 執行底下的Ruby程式碼可以知道警示音是什麼：
#
# puts "\aHello world\a"
# puts
# 我們已經使用過puts函式印出一些文字。在任何時候puts可以輸出文字到螢幕上，然後自動再最後面替你換上一行，舉例來說：
#
puts 'Say', 'hello', 'to', 'the', 'world'
# 執行結果
#
# $ hello-world.rb
# Say
# hello
# to
# the
# world
# print
# 對照之後，Ruby的print函式只會在你要求換行時才會輸出換行字元。舉例來說：
#
# print "Say", "hello", "to", "the", "world", "\n"
# 執行結果
#
# $ hello-world.rb
# Sayhellototheworld
# 底下的程式碼跟全部寫在同一行會有相同的執行結果
#
# print "Say"
# print "hello"
# print "to"
# print "the"
# print "world"
# print "\n"
