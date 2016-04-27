class Person < ActiveRecord::Base
  has_many :pets, inverse_of: :owner, foreign_key: 'owner_id'
  has_many :cities, through: :addresses
  has_many :addresses
end
