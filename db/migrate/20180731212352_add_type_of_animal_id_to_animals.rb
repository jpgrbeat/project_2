class AddTypeOfAnimalIdToAnimals < ActiveRecord::Migration[5.2]
  def change
    add_column :animals, :type_of_animal_id, :integer
  end
end
