class AddTimestampToTweets < ActiveRecord::Migration
  def change
    add_column :tweets, :timestamp, :string
  end
end
