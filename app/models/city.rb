class City < ActiveRecord::Base
  has_many :people, through: :addresses
end
