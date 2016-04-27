class City < ActiveRecord::Base
  has_many :addresses, inverse_of: :city
  has_many :people, through: :addresses
end
