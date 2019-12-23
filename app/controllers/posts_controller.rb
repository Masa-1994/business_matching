class PostsController < ApplicationController
  
  def index
    @posts = Post.includes(:user).page(params[:page]).per(5).order("created_at DESC")
  end

  def new
    @post = Post.new
  end

  def create
    Post.create(title: post_params[:title], text: post_params[:text], business: post_params[:business], area: post_params[:area], image: post_params[:image], user_id: current_user.id)
  end

  def show
    @post = Post.find(params[:id])
  end

  private
  def post_params
    params.permit(:title, :text, :business, :area, :image,)
  end
end