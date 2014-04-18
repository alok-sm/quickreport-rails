class ReportMailer < ActionMailer::Base
  default from: "ayanareports@gmail.com"
  def mailReport(
		description,
		imgurl,
		lattitude,
		longitude,
		recipient
  	)
  	link = 'https://maps.google.com/maps?q=' + lattitude.to_s + '%2C' + longitude.to_s + '&z=17'
  	@params = {
  		:imgurl => imgurl,
  		:mapslink => link
  	}
  	mail(:to => recipient, :subject => description)
  end
end
