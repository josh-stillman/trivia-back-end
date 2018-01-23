class Api::V1::LeaderboardController < ApplicationController

  def index
    @leaderboard = User.leaderboard
    render json: @leaderboard
  end

end
