# Question 1. Paste your code below.
'db/migrate/20160427170541_create_pets.rb'
'db/migrate/20160427170616_add_personto_pets.rb'
# Question 2. Paste your code below.
class Pet < ActiveRecord::Base
  belongs_to :person, inverse_of: :pets
end

class Person < ActiveRecord::Base
  has_many :pets, inverse_of: :person
end

# Question 3. Paste your code below.

sam = Pet.first
mam = Pet.last

jonah = Person.first

jonah << sam
jonah << mam

# Question 4. Paste your code below.
rails g model address person:references city:references

# Question 5. Paste your code below.

class Person < ActiveRecord::Base
  has_many :pets, inverse_of: :person
  has_many :cities, through: :addresses
end

class City < ActiveRecord::Base
  has_many :people, through: :addresses
end

class Address < ActiveRecord::Base
  belongs_to :person
  belongs_to :city
end
