class CreateScores < ActiveRecord::Migration[5.0]
  def change
    create_table :scores do |t|
      t.integer :user_id
      t.integer :T1
      t.integer :T2
      t.integer :T3
      t.integer :T4
      t.integer :Tot

      t.timestamps
    end
  end
end
