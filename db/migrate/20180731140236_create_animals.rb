class CreateAnimals < ActiveRecord::Migration[5.2]
  def change
    create_table :animals do |t|
      t.string :name
      t.string :type_of_animal
      t.string :description
      t.boolean :adopted, default: false
      t.integer :shelter_id

      t.timestamps
    end
  end
end
