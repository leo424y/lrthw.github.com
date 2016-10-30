# close – 關閉檔案。跟你編輯器的 文件->儲存.. 是一樣的意思。
# read – 讀取檔案內容。你可以把結果賦給一個變數。
# readline – 讀取檔案文字中的一行。
# truncate – 清空文件，請小心使用該命令。
# write(stuff) – 將 stuff 寫入檔案。

filename = ARGV.first
script = $PROGRAM_NAME

puts "寫入檔案 #{filename}"
puts '不爽，按CTRL-C'
puts '爽，按RETURN'

print '? '
STDIN.gets

puts '開檔...'
target = File.open(filename, 'w')

puts '清檔'
target.truncate(target.size)

puts '三行內容'

print '第一'; line1 = STDIN.gets.chomp
print '第二'; line2 = STDIN.gets.chomp
print '第三'; line3 = STDIN.gets.chomp

puts '寫入囉'

target.write(line1)
target.write("\n")
target.write(line2)
target.write("\n")
target.write(line3)
target.write("\n")

puts '關檔囉'
target.close
