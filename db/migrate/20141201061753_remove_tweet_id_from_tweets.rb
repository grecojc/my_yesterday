class RemoveTweetIdFromTweets < ActiveRecord::Migration
  def change
    remove_column :tweets, :tweet_id, :integer
  end
end
