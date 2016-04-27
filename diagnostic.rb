# Question 1. Paste your code below.
class CreatePets < ActiveRecord::Migration
  def change
    create_table :pets do |t|
    t.date :born_on
    t.string :kind
    t.string :name

    t.timestamps null: false
    end
  end
end

# Question 2. Paste your code below.
class Pet < ActiveRecord::Base
  belongs_to :person, inverse_of: :pets
end

class Person < ActiveRecord::Base
  has_many :pets, inverse_of: :people
end


# Question 3. Paste your code below.

# Question 4. Paste your code below.
class AddCityToPeople < ActiveRecord::Migration
  def change
    add_reference :people, :city, index: true, foreign_key: true
  end
end

# Question 5. Paste your code below.
