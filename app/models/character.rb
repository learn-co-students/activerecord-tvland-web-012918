require 'pry'

class Character < ActiveRecord::Base
  belongs_to :actor
  belongs_to :show

  def say_that_thing_you_say
    name = self.name
    phrase = self.catchphrase
    "#{name} always says: #{phrase}"
  end

  def build_network
    self.show.network
  end

end
