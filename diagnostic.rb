# Question 1. Paste your code below.

class CreatePets < ActiveRecord::Migration
  def change
    create_table :pets do |t|
      t.references :person, index: true, foreign_key: true

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

Person.first.pets << Pet.first
Person.first.pets << Pet.last

# Question 4. Paste your code below.

class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.references :person, index: true, foreign_key: true
      t.references :city, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

# Question 5. Paste your code below.

class Person < ActiveRecord::Base
  has_many :pets
  has_many :cities, through: :addresses
  has_many :addresses
end

class City < ActiveRecord::Base
  has_many :people, through: :addresses
  has_many :addresses
end

class Address < ActiveRecord::Base
  belongs_to :person, inverse_of: :addresses
  belongs_to :city, inverse_of: :addresses
end
