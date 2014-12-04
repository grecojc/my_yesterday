class CreateTrendTweets < ActiveRecord::Migration
  def change
    create_table :trend_tweets do |t|
      t.integer :trend_id
      t.integer :tweet_id

      t.timestamps
    end
  end
end
