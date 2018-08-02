class CreateAnimalBreeds < ActiveRecord::Migration[5.2]
  def change
    create_table :animal_breeds do |t|
      t.string :breed

      t.timestamps
    end
  end
end
