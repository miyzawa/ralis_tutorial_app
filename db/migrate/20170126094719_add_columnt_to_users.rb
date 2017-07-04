class AddColumntToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :tweet_id, :integer
  end
end
