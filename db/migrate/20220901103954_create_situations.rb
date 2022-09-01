class CreateSituations < ActiveRecord::Migration[6.1]
  def change
    create_table :situations do |t|
      t.string :situation, null: false
      t.integer :follower_id, null: false
      t.integer :following_id, null: false

      t.timestamps
    end
  end
end
