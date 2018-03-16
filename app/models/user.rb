class User < ApplicationRecord
  has_many :games, foreign_key: 'user1_id'
  has_many :games, foreign_key: 'user2_id'
  has_many :rounds, through: :games

  def games
    Game.where("user1_id = ? OR user2_id = ?", self.id, self.id)
  end

  def get_leaderboard_entry
      usercategories = Hash.new(0)
      self.rounds.each do |round|
        if round.user1_id === self.id
          usercategories[round.category] += round.user1_score
        else
          usercategories[round.category] += round.user2_score
        end
      end
        sorted = usercategories.sort_by {|k, v| v}
        total = sorted.inject(0) do |sum, round|
          sum + round[1]
        end
        [self.name, total, sorted == [] ? "none": sorted.reverse[0][0]]
    end

    def self.leaderboard
        unsorted = User.all.map { |user| user.get_leaderboard_entry }
        unsorted.sort_by{|arr| arr[1]}.reverse
    end



end
