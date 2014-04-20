class StatsController < ApplicationController

	include CountHelper

	def index
    	@posts = Post.all
    	@states = {}
    	@issues = {}

    	@posts.each do |p|
    		addOrIncrement(@states, p.statecode)
    		addOrIncrement(@issues, p.hashtag)
    	end
    	@pie = renderPie(@issues, 'Trending issues in India')
    	@bar = renderBar(@states, 'Issues by states')
  	end

	def show
		param = params[:id]

    	if(param.length<3)
    		@posts = Post.where(
    			:statecode => param
    		)
    		@issues = {}
    		@posts.each do |p|
    			addOrIncrement(@issues, p.hashtag)
    		end

    		@fig = renderPie(
    			@issues,
    			'Trending issues in '+$state[eval(':'+param.to_s)]
    		)
    	else
    		hash = params[:id]
    		@posts = Post.where(
    			:hashtag => hash
    		)
    		@states = {}
    		@posts.each do |p|
    			addOrIncrement(@states, p.statecode)
    		end
    		@fig = renderBar(@states, hash+' state trends')
    	end
	end

	def renderPie(hash,title)
		keys = hash.keys
		vals = hash.values
		keys.collect!{|k| k = '#'+k.to_s}
		return Gchart.pie(
			:data => vals,
			:labels => keys,
			:size => '600x300' , 
			:bar_color => '00a1e1',
			:title => title
		)
	end

	def renderBar(hash,title)
		keys = hash.keys
		vals = hash.values
		return Gchart.bar(
			:data => vals,
			:labels => keys,
			:size => '600x300' , 
			:bar_color => '00a1e1',
			:title => title,
			:bar_width_and_spacing => '30,20'
		)
	end
end
