class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, :through => :characters


  def full_name
    self.first_name + " " + last_name
  end

  def list_roles
    car = self.characters.map do |element|
    element.name + " - " + self.shows[0].name
    end
  end
end

#   # TODO create a list_roles method
#   # TODO: build a method on actor that will return an array of
#   # strings in the form "#{character_name} - #{show_name}"
#   emilia = Actor.new(:first_name => "Emilia", :last_name => "Clarke")
#   khaleesi = Character.new(:name => "Khaleesi")
#   khaleesi.actor = emilia
#   got = Show.new(:name => "Game of Thrones")
#   khaleesi.show = got
#   khaleesi.save
#
#   khaleesi.reload
#   expect(emilia.list_roles).to include("Khaleesi - Game of Thrones")
# end
