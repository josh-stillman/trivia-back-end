class User < ApplicationRecord
  has_many :games, foreign_key: 'user1_id'
  has_many :games, foreign_key: 'user2_id'
  has_many :rounds, through: :games

  def games
    Game.where("user1_id = ? OR user2_id = ?", self.id, self.id)
  end

end
