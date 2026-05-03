class CreatePets < ActiveRecord::Migration[8.1]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :species
      t.text :note
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
