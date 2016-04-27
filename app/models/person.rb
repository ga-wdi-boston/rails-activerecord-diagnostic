class Person < ActiveRecord::Base
  has_many :pets, inverse_of: :person
  has_many :addresses, inverse_of: :person
  has_many :cities, through: :addresses
end
