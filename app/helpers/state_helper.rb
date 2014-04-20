module StateHelper
	def getState(lattitude, longitude)
		val = res=Geokit::Geocoders::GoogleGeocoder.reverse_geocode(
			lattitude.to_s+','+longitude.to_s
		)
		val = val.to_hash
		return {
			:code => val[:state],
			:state => $state[eval(':'+val[:state])]
		}
	end
end