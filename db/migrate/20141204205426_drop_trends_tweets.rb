class DropTrendsTweets < ActiveRecord::Migration
  def change
  	drop_table :trend_tweets
  end
end
