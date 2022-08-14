# A Show has many Characters, has many Actors through Characters, and belongs to a Network
class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network

# Takes the list of actors associated with a movie, and returns a list of their full names
  def actors_list
    self.actors.map do |actor|
      actor.full_name
    end
  end

end