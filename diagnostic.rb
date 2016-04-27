# Question 1. Paste your code below.

rails g migration AddPersonToPets people:references

# Question 2. Paste your code below.
class Person < ActiveRecord::Base
  has_many :pets
end

class Pet < ActiveRecord::Base
  belongs_to :person, inverse_of: :pets
end

# Question 3. Paste your code below.

Jim = Person.first
Tom = Pet.first
Jim.pets << Tom


# Question 4. Paste your code below.

# Question 5. Paste your code below.
