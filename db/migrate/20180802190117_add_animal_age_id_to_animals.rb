class AddAnimalAgeIdToAnimals < ActiveRecord::Migration[5.2]
  def change
    add_column :animals, :animal_age_id, :integer
  end
end
