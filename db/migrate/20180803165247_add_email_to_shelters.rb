class AddEmailToShelters < ActiveRecord::Migration[5.2]
  def change
    add_column :shelters, :email, :string
  end
end
