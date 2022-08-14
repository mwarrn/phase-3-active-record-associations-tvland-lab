# An Actor has many Characters and has many Shows through Characters.
class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

# Takes the first name and last name of a person and returns a string with the first name and last
# name separated by a space
  def full_name
    "#{self.first_name} #{self.last_name}"
  end

# It takes an array of characters and returns an array of strings that contain the character's name
# and the name of the show they're in
  def list_roles
    self.characters.map do |character|
      "#{character.name} - #{character.show.name}"
    end
  end

end