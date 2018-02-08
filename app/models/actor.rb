require 'pry'
class Actor < ActiveRecord::Base

  has_many :characters
  has_many :shows, through: :characters

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    # character.name - show.name
    self.characters.collect {|char| "#{char.name} - #{char.show.name}"}
  end

end
