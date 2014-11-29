class AddNewsSourceRefToTweets < ActiveRecord::Migration
  def change
    add_reference :tweets, :news_source, index: true
  end
end
