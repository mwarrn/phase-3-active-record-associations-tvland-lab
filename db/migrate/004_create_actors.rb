# CreateActors is a class that inherits from ActiveRecord::Migration and has a change method that
# creates a table called actors with two columns: first_name and last_name.
class CreateActors < ActiveRecord::Migration[6.1]
  def change
    create_table :actors do |t|
      t.string :first_name
      t.string :last_name
    end
  end
end