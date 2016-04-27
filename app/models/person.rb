class Person < ActiveRecord::Base
  has_many :pets, inverse_of: :person
  has_many :cities, through: :addresses
  has_many :addresses
end
