# This class inherits from ActiveRecord::Migration and has a change method that creates a table called
# characters with a name, actor_id, and show_id column.
class CreateCharacters < ActiveRecord::Migration[6.1]
  def change
    create_table :characters do |t|
      t.string :name
      t.integer :actor_id
      t.integer :show_id
    end
  end
end