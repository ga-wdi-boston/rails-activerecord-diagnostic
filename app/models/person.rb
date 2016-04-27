class Person < ActiveRecord::Base
  has_many :pets, foreign_key: 'owner_id'
  has_many :cities, through: :addresses
  has_many :addresses
end
