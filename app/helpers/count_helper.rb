module CountHelper
	def addOrIncrement(hash, key)
		key = eval(':'+key)
		if(hash.has_key?(key))
			hash[key]+= 1
		else
			hash[key] = 1
		end
	end
end