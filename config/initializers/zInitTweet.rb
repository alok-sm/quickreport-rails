$client = Twitter::REST::Client.new do |config|
  config.consumer_key        = 'J3Ku3lDOv4lKTuezPvM6IkbAk'
  config.consumer_secret     = 'akt0qahFc8Tj8IZURTuzpkPXM6afWMDZIp4KLPNStRrKGbuOWv'
  config.access_token        = '2449177514-TwZWDUockzGrLjI4B0ycz14dSJNM9BSSxhjC4N6'
  config.access_token_secret = 'NsFmPCFimAjZj1vG12haOs3FnDvsiPBVDsxpToLty3lRN'
end

puts "$$$$$$$$$$$$$$$$$$$$$$$$"
puts $client.to_json
puts "$$$$$$$$$$$$$$$$$$$$$$$$"