class DropTrendTweets < ActiveRecord::Migration
  def change
  	drop_table :trends_tweets
  end
end
