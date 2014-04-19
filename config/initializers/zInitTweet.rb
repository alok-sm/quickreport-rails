$client = Twitter::REST::Client.new do |config|
  config.consumer_key        = 'J3Ku3lDOv4lKTuezPvM6IkbAk'
  config.consumer_secret     = 'akt0qahFc8Tj8IZURTuzpkPXM6afWMDZIp4KLPNStRrKGbuOWv'
  config.access_token        = '2449177514-TwZWDUockzGrLjI4B0ycz14dSJNM9BSSxhjC4N6'
  config.access_token_secret = 'NsFmPCFimAjZj1vG12haOs3FnDvsiPBVDsxpToLty3lRN'
end

$data = [
	{
		:keys => [
			'bribe',
			'corruption'
		],
		:value => '#RepCorruption',
		:category => 'coruption'
	},
	{
		:keys => [
			'eve teased',
			'eve teasing',
			'women harrasment',
			'women abuse',
			'rape'
		],
		:value => '#RepWomenAbuse',
		:category => 'women abuse'
	},
	{
		:keys => [
			'signal jump',
			'speeding',
			'traffic',
			'collision',
			'accident'
		],
		:value => '#RepTrafficProb',
		:category => 'Traffic Violation'
	},
	{
		:keys => [
			'pothole',
			'crater',
			'hump',
			'manhole',
			'sewage',
			'drainage'
		],
		:value => '#RepInfraProb',
		:category => 'Infrastructure problem'
	},
	{
		:keys => [
			'child labour',
			'child labor',
			'child abuse',
			'child protection',
			'child worker',
			'child employee'
		],
		:value => '#RepChildAbuse',
		:category => 'child abuse'
	},
	{
		:keys => [
			'theft',
			'burgal',
			'chain snatch',
			'murder'
		],
		:value => '#RepCrime',
		:category => 'crime'
	},
]