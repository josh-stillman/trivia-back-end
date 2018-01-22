class Api::V1::RoundsController < ApplicationController

  def create
    byebug
    @round = Round.create(round_params)
    render json: @round
  end

  private
  def round_params
    params.permit(:user1_id, :user1_score, :user2_id, :user1_score, :category)

  end
end
