class TrendsTweets < ActiveRecord::Migration
  def change
  	create_table :trends_tweets, :id => false do |t|
  		t.integer :trend_id
  		t.integer :tweet_id
  	end
  end
end
