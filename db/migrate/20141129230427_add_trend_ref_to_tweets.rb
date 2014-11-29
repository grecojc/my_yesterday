class AddTrendRefToTweets < ActiveRecord::Migration
  def change
    add_reference :tweets, :trend, index: true
  end
end
