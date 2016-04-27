class CreateJoinTable < ActiveRecord::Migration
  def change
    create_join_table :cities, :people do |t|
      # t.index [:city_id, :person_id]
      # t.index [:person_id, :city_id]
    end
  end
end
