class Character < ActiveRecord::Base
belongs_to :actor
belongs_to :show
has_many :network, :through => :show

  def list_roles
    self.all
  end

  def say_that_thing_you_say
  "#{self.name} always says: #{self.catchphrase}"
  end

end
