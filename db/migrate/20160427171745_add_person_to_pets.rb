class AddPersonToPets < ActiveRecord::Migration
  def change
    add_reference :pets, :person, references: :people, index: true
    add_foreign_key :pets, :people, column: :people_id
  end
end
