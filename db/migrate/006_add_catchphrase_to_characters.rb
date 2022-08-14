# This class adds a catchphrase column to the characters table.
class AddCatchphraseToCharacters < ActiveRecord::Migration[6.1]
  def change
    add_column :characters, :catchphrase, :string
  end
end