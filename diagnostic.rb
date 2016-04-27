# Question 1. Paste your code below.
class CreatePets < ActiveRecord::Migration
  def change
    create_table :pets do |t|
      t.string :born_on
      t.string :kind
      t.string :name

      t.timestamps null: false
    end
  end
end

# Question 2. Paste your code below.
class Person < ActiveRecord::Base
  has_many :pets
end

class Pet < ActiveRecord::Base
  belongs_to :person, inverse_of: :pets
end

# Question 3. Paste your code below.

# Question 4. Paste your code below.
class Address < ActiveRecord::Base
  belongs_to :person, inverse_of: :addresses
  belongs_to :city, inverse_of: :addresses
end
# Question 5. Paste your code below.
