class PostsController < ApplicationController

  include TweetHelper

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
    @post.save
    redirect_to @post, notice: 'Post was successfully created.'
    # report(@post)
  end

  def destroy
    @post = Post.find(params[:id])
    @post.image.destroy
    @post.destroy
    redirect_to '/posts'
  end

  def report(post)
    tweet(
      post.description,
      post.image.path,
      post.lattitude,
      post.longitude
    )
  end
end