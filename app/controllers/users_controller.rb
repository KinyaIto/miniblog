class UsersController < ApplicationController
 
  def show
    @tweet = Tweet.find(params[:id])
    @tweets = Tweet.where(user_id: current_user.id)
    # @comments = @tweet.comments.includes(:user)
  end


end
