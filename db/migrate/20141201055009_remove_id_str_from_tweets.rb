class RemoveIdStrFromTweets < ActiveRecord::Migration
  def change
    remove_column :tweets, :id_str, :string
  end
end
