# parsed_response
# https://www.moedict.tw/a/%E8%90%8C.json
require 'httparty'
require 'uri'

@word = ARGV.first
# final_url = URI.escape("https://www.moedict.tw/a/#{@word}.json")
# p search_word = word.dup.force_encoding('ASCII-8BIT')
# p search_word.class
# p 'hello'.gsub(/[a-z]/, '%')
# p search_word.gsub(/[a-z]/, '%')
# p search_word.each_char { |c| print c, ' ' }
# search_word.gsub(/[B]/, '1')
# word = '張'.dup.force_encoding('ASCII-8BIT')
# p word帥
#

# 中文網址要做
p final_url = URI.escape("https://www.moedict.tw/a/#{@word}.json")

# 取回json
response = HTTParty.get(final_url)

# json 解開
body = JSON.parse(response.body)

# array 讀取 json
p t = body['t'].gsub(/[~`]/, '')
f = body['h'].each do |h|
  h['d'].each do |d|
    # 去掉不要的字符
    p d['f'].gsub(/[~`]/, '')
  end
end
