class CreateNewsSources < ActiveRecord::Migration
  def change
    create_table :news_sources do |t|
      t.string :screen_name
      t.string :name
      t.string :website

      t.timestamps
    end
  end
end
