require 'pry'

class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    # binding.pry
    thing = self.first_name + " " + self.last_name
  end

  def list_roles
    self.characters.map do |characters|
      # binding.pry
      characters.name + " - " + self.shows[0].name
    end
  end


end
