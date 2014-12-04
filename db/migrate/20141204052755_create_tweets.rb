class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.string :text
      t.string :screen_name
      t.string :timestamp
      t.string :source

      t.timestamps
    end
  end
end
