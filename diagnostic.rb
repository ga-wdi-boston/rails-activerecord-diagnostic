# Question 1. Paste your code below.
class CreatePets < ActiveRecord::Migration
  def change
    create_table :pets do |t|
      t.references :person, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end


# Question 2. Paste your code below.

# Question 3. Paste your code below.

# Question 4. Paste your code below.

# Question 5. Paste your code below.
