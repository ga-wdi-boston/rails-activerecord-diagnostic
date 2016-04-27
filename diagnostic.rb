# Question 1. Paste your code below.
class CreatePets < ActiveRecord::Migration
  def change
    create_table :pets do |t|
      t.date :born_on
      t.string :kind
      t.string :name
      t.references :person, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

# Question 2. Paste your code below.
class Person < ActiveRecord::Base
  has_many :pets, inverse_of: :person
end

class Pet < ActiveRecord::Base
  belongs_to :person, inverse_of: :pets, class_name: 'Person'
end

# Question 3. Paste your code below.
Person.first.pets << Pet.first
Person.first.pets << Pet.last

# Question 4. Paste your code below.
class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.integer :no
      t.string :street
      t.references :person, index: true, foreign_key: true
      t.references :city, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

# Question 5. Paste your code below.
class Address < ActiveRecord::Base
  belongs_to :person, inverse_of: :addresses
  belongs_to :city, inverse_of: :addresses
end

class City < ActiveRecord::Base
  has_many :people, through: :addresses
  has_many :addresses
end

class Person < ActiveRecord::Base
  has_many :pets, inverse_of: :person
  has_many :cities, through: :addresses
  has_many :addresses
end
