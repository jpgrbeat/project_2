class AddAnimalBreedIdToAnimals < ActiveRecord::Migration[5.2]
  def change
    add_column :animals, :animal_breed_id, :integer
  end
end
