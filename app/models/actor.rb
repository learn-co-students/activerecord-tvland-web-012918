class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    full_name = self.first_name + "\ " + self.last_name
    full_name
  end

  def list_roles
    self.characters.map{|character|
      character.name.to_s + " - " + character.show.name.to_s}
  end
end
