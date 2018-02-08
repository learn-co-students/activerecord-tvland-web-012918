class AddNameToNetwork < ActiveRecord::Migration
  def change
    add_column :networks, :name, :string
  end
end
