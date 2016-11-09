# parsed_response
# https://www.moedict.tw/a/%E8%90%8C.json
require 'httparty'
require 'uri'

@word = ARGV.first

# 中文網址識別
p final_url = URI.escape("https://www.moedict.tw/a/#{@word}.json")

# 取回json
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
