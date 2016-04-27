class CreatePets < ActiveRecord::Migration
  def change
    create_table :pets do |t|
      t.references :person, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
