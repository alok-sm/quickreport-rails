module TweetHelper
	def tweet(
		description,
		filePath,
		lattitude,
		longitude
	)
		$client.update_with_media(
			description, 
			File.new(filePath), 
			:lat => lattitude, 
			:long => longitude, 
			:display_coordinates => true
		)
	end
end
