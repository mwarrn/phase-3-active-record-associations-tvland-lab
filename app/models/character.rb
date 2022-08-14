class Character < ActiveRecord::Base
# Creating a relationship between the Character class and the Actor and Show classes.
  belongs_to :actor
  belongs_to :show

# Takes in an instance of the class and returns a string that says the name of the
# instance and the catchphrase of the instance.
  def say_that_thing_you_say
    "#{self.name} always says: #{self.catchphrase}"
  end
end