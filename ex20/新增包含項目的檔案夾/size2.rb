def chunker(f_in, out_pref)
  File.open(f_in, 'r') do |fh_in|
    a = 1
    until fh_in.eof?
      line_context = fh_in.readline
      if line_context == "---\n"
        a += 1
        puts '換頁'
      else
        File.open("#{out_pref}#{a}.md", 'w') do |fh_out|
          fh_out << line_context
        end
      end
    end
  end
end

chunker '123.md', '2016-11-04-'
