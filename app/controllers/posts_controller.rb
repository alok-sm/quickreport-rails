class PostsController < ApplicationController

  include StateHelper
  include TweetHelper
  include AbsolutePathHelper
  include HashtagHelper

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(params[:post])
    hash = getHashTag(@post.description)
    loc = getState(@post.lattitude, @post.longitude)
    @post.category = hash[0]
    @post.hashtag = hash[1]
    @post.state = loc[:state]
    @post.statecode = loc[:code]
    @post.save
    redirect_to @post
    report(@post)
  end

  def destroy
    @post = Post.find(params[:id])
    @post.image.destroy
    @post.destroy
    redirect_to '/posts'
  end

  def report(post)
    t = tweet(
      post.description+' #'+post.hashtag,
      post.image.path,
      post.lattitude,
      post.longitude
    )
    post.tpicurl = t.to_hash[:entities][:media][0][:media_url]
    post.save

    ReportMailer.mailReport(
      post.description,
      post.category,
      post.hashtag,
      post.tpicurl,
      post.lattitude,
      post.longitude,
      "mlabangaloresouth@gmail.com"
    ).deliver
  end

end
