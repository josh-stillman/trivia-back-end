class Api::V1::GamesController < ApplicationController

  def index
    @games = Game.all
    render json: @games
  end

  def create
    @game = Game.create(game_params)
    render json: @game
  end

  private
  def game_params
    params.permit(:user1_id, :user2_id)

  end
end
