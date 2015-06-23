class CreateActors < ActiveRecord::Migration
  def change
    create_table :actors do |t|
      #primary key of :id is created for us!
      t.string :first_name
      t.string :last_name
      t.integer :character_id #actor associates with character name
    end
  end
end

# Actors should have a first_name and a last_name.

