class CreateTypeOfAnimals < ActiveRecord::Migration[5.2]
  def change
    create_table :type_of_animals do |t|
      t.string :name

      t.timestamps
    end
  end
end
