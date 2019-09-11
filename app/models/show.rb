class Show < ActiveRecord::Base
  has_many :actors, through: :shows
  has_many :characters
  belongs_to :network

  def build_network(network_name)
    self.network = Network.new(network_name)
  end

end
