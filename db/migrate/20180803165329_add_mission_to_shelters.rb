class AddMissionToShelters < ActiveRecord::Migration[5.2]
  def change
    add_column :shelters, :mission, :string
  end
end
