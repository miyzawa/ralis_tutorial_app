class AddColumnToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :pass, :string
  end
end
