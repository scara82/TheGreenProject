class RemoveColumnFromTable < ActiveRecord::Migration[5.0]
  def change
    remove_column :scores, :T4, :integer
  end
end
