# Question 1. Paste your code below.
class CreatePets < ActiveRecord::Migration
  def change
    create_table :pets do |t|
      t.date :born_on
      t.text :kind
      t.text :name
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
  belongs_to :person, inverse_of: :pets
end

# Question 3. Paste your code below.
Person.first.pets << Pet.first << Pet.last

# Question 4. Paste your code below.
'rails g model Address street_no:integer street_name:string city:references person:references'

# Question 5. Paste your code below.
class Address < ActiveRecord::Base
  belongs_to :city, inverse_of: :addresses
  belongs_to :person, inverse_of: :addresses
end

class City < ActiveRecord::Base
  has_many :addresses, inverse_of: :city
  has_many :people, through: :addresses
end

class Person < ActiveRecord::Base
  has_many :pets, inverse_of: :person
  has_many :addresses, inverse_of: :person
  has_many :cities, through: :addresses
end
