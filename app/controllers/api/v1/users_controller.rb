class Api::V1::UsersController < ApplicationController

  def index
    @users = User.all
    render json: @users
    # Name, total score over all games, best category
    #
    # ranked by total score
end
#

  def show
    @user = User.find(params[:id])
    render json: @user.get_leaderboard_entry
  end

  def create
    @user = User.create(user_params)
    render json: @user
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    @user.save
    render json: @user
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
  end

  private
  def user_params
    params.permit(:name, :bio, :image)
  end


end
