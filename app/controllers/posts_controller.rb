class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  
  def new
    @post = Post.new
  end
  
  def create 
    #binding.pry
    @post = Post.create(title: params[:title], description: params[:description])
    redirect_to post_path(@post)
  end

  def show
    @post = Post.find(params[:id])
  end

end
