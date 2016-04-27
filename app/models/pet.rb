class Pet < ActiveRecord::Base
  belongs_to :people, inverse_of: :pets, class_name: 'Person'
end
