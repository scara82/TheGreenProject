class RemoveColumns < ActiveRecord::Migration[5.0]
  def self.up
    remove_column :scores, :T3
  end
end
