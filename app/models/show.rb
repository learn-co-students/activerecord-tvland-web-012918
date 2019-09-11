class Show < ActiveRecord::Base
  belongs_to :network
  has_many :characters
  has_many :actors, through: :characters

  def self.build_network(show)
    self.network.shows << show
  end

end
