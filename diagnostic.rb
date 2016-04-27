# Question 1. Paste your code below.

# pet
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

# Question 2. Paste your code below.

# pet
class Pet < ActiveRecord::Base
  belongs_to :owner, inverse_of: :pets, class_name: 'Person'
end

# person
class Person < ActiveRecord::Base
  has_many :pets, inverse_of: :owner, foreign_key: 'owner_id'
end

# Question 3. Paste your code below.

# rails console
sushi = Pet.first
blue = Pet.last
jonah = Person.first

sushi.people << jonah
blue.people << jonah

# Question 4. Paste your code below.

# CreateAddresses
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

# person
class Person < ActiveRecord::Base
  has_many :pets, inverse_of: :owner, foreign_key: 'owner_id'
  has_many :cities, through: :addresses
  has_many :addresses
end

# address
class Address < ActiveRecord::Base
  belongs_to :person, inverse_of: :addresses
  belongs_to :city, inverse_of: :addresses
end

# city
class City < ActiveRecord::Base
  has_many :people, through: :addresses
  has_many :addresses
end
