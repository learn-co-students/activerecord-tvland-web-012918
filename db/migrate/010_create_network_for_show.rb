class CreateNetworkForShow<ActiveRecord::Migration
  def change
    add_column :shows, :network, :string
  end
end
