class RemoveTweetIdFromUser < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :tweet_id, :integer
  end
end
