# Question 1. Paste your code below.
rails g migration pet born_on:date kind:string name:string person:references
# Question 2. Paste your code below.
class Person < ActiveRecord::Base
  has_many :pets
end

class Pet < ActiveRecord::Base
  belongs_to :person, inverse_of: :pets
end
# Question 3. Paste your code below.
dude = Person.first
pet1 = Pet.first
pet2 = Pet.last
dude.pets << pet1
dude.pets << pet2
# Question 4. Paste your code below.
rails g migration address person:references city:references
# Question 5. Paste your code below.
class Person < ActiveRecord::Base
  has_many :cities, through: :addresses
  has_many :addresses
end

class City < ActiveRecord::Base
  has_many :people, through: :addresses
  has_many :addresses
end
