class AddFieldsToPet < ActiveRecord::Migration
  def change
    add_column :pets, :born_on, :integer
    add_column :pets, :kind, :string
    add_column :pets, :name, :string
  end
end
