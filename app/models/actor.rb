require 'pry'
class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters
  def full_name
    fname = self.first_name
    lname = self.last_name
    full_name = "#{fname} #{lname}"
  end
  def list_roles
    # binding.pry
    self.characters.map do |c|
      "#{c.name} - #{c.show.name}"
    end
  end
end
