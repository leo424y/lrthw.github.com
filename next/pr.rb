# parsed_response
# https://www.moedict.tw/a/%E8%90%8C.json
require 'httparty'
require 'uri'

@word = ARGV.first
# 中文網址識別
p final_url = URI.escape("https://www.moedict.tw/a/#{@word}.json")

# 取回json

# json 解開
case response.body
when 200
  puts 'All good!'
  response = HTTParty.get(final_url)
  find_word
when 404
  puts 'O noes not found!'
when 500...600
  puts "ZOMG ERROR #{response.code}"
end

def find_word
  # hash 讀取 json
  p t = body['t'].gsub(/[~`]/, '')
  f = body['h'].each do |h|
    h['d'].to_a.each do |d|
      # 去掉不要的字符
      p d['f'].gsub(/[~`]/, '')
    end
  end
end
