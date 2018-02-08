require "pry"
class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    arr = []
    arr << self.first_name
    arr << self.last_name
    arr.join(' ')
  end

  def list_roles
    self.characters.map do |character|
      "#{character.name} - #{Show.find_by_id(character.actor_id).name}"
      # binding.pry
    end
  end

end
