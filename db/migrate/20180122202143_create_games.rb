class CreateGames < ActiveRecord::Migration[5.1]
  def change
    create_table :games do |t|
      t.integer :user1_id, foreign_key: true
      t.integer :user2_id, foreign_key: true

      t.timestamps
    end
  end
end
