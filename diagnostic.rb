# Question 1. Paste your code below.
class Pets < ActiveRecord::Migration
  def change
    create_table :pets do |t|
      t.date :born_on
      t.string :kind
      t.string :name

      t.timestamps null: false
    end
  end
end

class AddPersonToPets < ActiveRecord::Migration
  def change
    add_reference :pets, :person, references: :people, index: true
    add_foreign_key :pets, :people, column: :people_id
  end
end

# Question 2. Paste your code below.
class Person < ActiveRecord::Base
  has_many :pets, inverse_of: :person, foreign_key: 'person_id'
end

class Pet < ActiveRecord::Base
  belongs_to :person, inverse_of: :pets, class_name: 'Person'
end

# Question 3. Paste your code below.
karen = Person.first
spot = Pet.first
scout = Pet.last
karen << spot
karen << scout

# Question 4. Paste your code below.
class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.references :person, index: true, foreign_key: true
      t.references :city, index: true, foreign_key: true
      t.string :category

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
  # has_many :pets, inverse_of: :person, foreign_key: 'person_id'
  has_many :cities, through: :addresses
  has_many :addresses
end
