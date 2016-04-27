class Person < ActiveRecord::Base
  has_many :pets, inverse_of: :person, foreign_key: 'person_id'
  has_many :cities, through: :addresses
  has_many :addresses
end
