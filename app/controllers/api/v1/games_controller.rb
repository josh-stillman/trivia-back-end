class Api::V1::GamesController < ApplicationController

  def create
    byebug
    @game = Game.create(game_params)
    render json: @game
  end

  private
  def game_params
    params.permit(:user1_id, :user2_id)

  end
end
