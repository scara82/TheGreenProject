class ChangeColumnName < ActiveRecord::Migration[5.0]
  def change
    rename_column :scores, :T1, :test_id
  end
end
