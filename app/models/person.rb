class Person < ActiveRecord::Base
  has_many :pets, inverse_of: :people
end
