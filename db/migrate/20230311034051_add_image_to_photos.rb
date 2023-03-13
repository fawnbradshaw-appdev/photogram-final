class AddImageToPhotos < ActiveRecord::Migration[6.0]
  def change
    add_column :photos, :newImageString, :string
  end
end
