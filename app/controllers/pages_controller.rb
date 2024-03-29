class PagesController < ApplicationController
  def index
  end

  def home
    @posts = Post.all
  end

  def profile
  	# Grab the username from the URL as :id
  	if(User.find_by_username(params[:id]))
    @username = params[:id]
    else
      redirect_to root_path, :notice=> "User not found!"
    end
    @posts = Post.all.where("user_id = ?", User.find_by_username(params[:id]).id)
  end

  def explore
    @posts = Post.all
  end

end
