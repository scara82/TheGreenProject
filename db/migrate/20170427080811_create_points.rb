class CreatePoints < ActiveRecord::Migration[5.0]
  def change
    create_table :points do |t|
      t.integer :q1
      t.integer :q2
      t.integer :q3

      t.timestamps
    end
  end
end
