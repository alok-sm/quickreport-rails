class ReportMailer < ActionMailer::Base
  default from: "ayanareports@gmail.com"
  def mailReport(
		description,
    category,
    hashtag,
		imgurl,
		lattitude,
		longitude,
		recipient
  	)
  	link = 'https://maps.google.com/maps?q=' + lattitude.to_s + '%2C' + longitude.to_s + '&z=17'
  	@params = {
      :description => description,
  		:imgurl => imgurl,
  		:mapslink => link,
      :cat => category,
      :hash => hashtag
  	}
  	mail(:to => recipient, :subject => 'New Report for '+
      category+
      ' on '
    )
  end
end
