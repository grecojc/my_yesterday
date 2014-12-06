class AddProfilImageUrlToNewsSources < ActiveRecord::Migration
  def change
    add_column :news_sources, :profile_image_url, :string
  end
end
