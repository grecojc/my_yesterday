class RemoveNewsSourceIdFromTweets < ActiveRecord::Migration
  def change
    remove_column :tweets, :news_source_id, :integer
  end
end
