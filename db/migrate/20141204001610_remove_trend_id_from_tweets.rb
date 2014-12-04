class RemoveTrendIdFromTweets < ActiveRecord::Migration
  def change
    remove_column :tweets, :trend_id, :integer
  end
end
