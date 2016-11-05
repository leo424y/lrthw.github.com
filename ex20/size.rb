# 1105

def chunker(f_in, out_pref)
  File.open(f_in, 'r') do |fh_in|
    filename = 1
    until fh_in.eof?
      puts ">>打開#{filename}.md"
      # 靠，多看文件啊 https://www.tutorialspoint.com/ruby/ruby_input_output.htm
      File.open("#{out_pref}#{filename}.md", 'a') do |fh_out|
        line_context = fh_in.readline
        puts '下一行'
        # 碰到分頁切
        if line_context == "---\n"
          filename += 1
          puts ">>換至#{filename}.md"
        else
          fh_out << line_context
          puts ">>寫進#{line_context}"
        end
      end
    end
  end
end

chunker '123.md', '2016-11-04-'

# TODO: 不用一直重覆打開
