module HashtagHelper

	def contains(a,b)
		b.each do |c|
			if a.downcase.include? c.downcase
				return true
			end
		end
		return false
	end

	def getHashTag(description)
		$data.each do |d|
			if contains(description,d[:keys])
				return [d[:category],d[:value]]
			end
		end
		return ['Misc Issues','#RepMiscIssue']
	end

end