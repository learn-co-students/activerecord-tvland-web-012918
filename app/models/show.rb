class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :shows
  belongs_to :network

  def build_network(params)
    new_network = Network.find_or_create_by(params)
    new_network.shows << self
  end
end
