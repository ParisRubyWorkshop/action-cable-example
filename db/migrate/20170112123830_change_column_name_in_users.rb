class ChangeColumnNameInUsers < ActiveRecord::Migration[5.0]
  def change
    rename_column :users, :name, :username
  end
end
