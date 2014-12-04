class AddPrimaryKeyToTweets < ActiveRecord::Migration
  def change
    add_column :tweets, :id, :primary_key
  end
end
