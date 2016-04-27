class AddPersontoPets < ActiveRecord::Migration
  def change
    add_reference :pets, :person, index: true
  end
end
