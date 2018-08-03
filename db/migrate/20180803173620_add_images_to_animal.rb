class AddImagesToAnimal < ActiveRecord::Migration[5.2]
  def change
    add_column :animals, :image_html, :string
  end
end
