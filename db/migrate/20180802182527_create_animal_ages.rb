class CreateAnimalAges < ActiveRecord::Migration[5.2]
  def change
    create_table :animal_ages do |t|
      t.integer :age

      t.timestamps
    end
  end
end
