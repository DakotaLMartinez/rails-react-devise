class PostsController < ApplicationController
  def index 
    if authenticated?
      render json: current_user.posts
    end 
  end

  def create 
    if authenticated? 
      binding.pry
    end
  end

  private 

  def authenticated? 
    if user_signed_in?
      true 
    else
      render json: {}, status: 401
    end
  end

  def post_params 

  end
end
