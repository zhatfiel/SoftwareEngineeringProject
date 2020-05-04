class AddImageDataColumnToArticles < ActiveRecord::Migration[5.2]
  def change
    add_column :articles, :image_data, :text
  end
end
