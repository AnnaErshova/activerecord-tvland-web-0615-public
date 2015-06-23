class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      #primary key of :id is created for us!
      t.string :name
      t.string :show_id # or integer?; # can build its associated show
      t.string :actor_id
      t.string :catchphrase # has a catchphrase
    end
  end
end


# Characters should have a name and a show_id.
# Associate the Actor model with the Character and Show model.
