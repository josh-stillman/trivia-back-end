class CreateRounds < ActiveRecord::Migration[5.1]
  def change
    create_table :rounds do |t|
      t.integer :user1_id
      t.integer :user1_score
      t.integer :user2_id
      t.integer :user2_score
      t.string :category
      t.belongs_to :game, foreign_key: true

      t.timestamps
    end
  end
end
