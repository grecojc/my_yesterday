class CreateTrends < ActiveRecord::Migration
  def change
    create_table :trends do |t|
      t.string :name

      t.timestamps
    end
  end
end
