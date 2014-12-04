class CreateTrendsTweets < ActiveRecord::Migration
  def change
    create_table :trends_tweets, :id => false do |t|
      t.references :trend, :tweet
    end

    add_index :trends_tweets, [:trend_id, :tweet_id],
      name: "trends_tweets_index",
      unique: true
  end
end
