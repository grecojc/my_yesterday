class ChangeTweetIdOnTweets < ActiveRecord::Migration
  def change
  	rename_column :tweets, :tweet_id, :source
  end
end
