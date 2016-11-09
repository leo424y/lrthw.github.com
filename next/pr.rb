# parsed_response

require 'httparty'
response = HTTParty.get('https://www.moedict.tw/a/%E8%90%8C.json')

body = JSON.parse(response.body)
p t = body['t']

p English = body['English']

f = body['h'].each do |h|
  h['d'].each do |d|
    p d['f']
  end
end
