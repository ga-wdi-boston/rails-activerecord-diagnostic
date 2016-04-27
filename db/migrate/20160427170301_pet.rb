class CreatePet < ActiveRecord::Migration
  def change
    create_table :pets do |t|
      t.references :person, index: true, foreign_key: true
      t.date :born_on
      t.string :kind
      t.string :name

      t.timestamps null: false
    end
  end
end
