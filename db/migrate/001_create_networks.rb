class CreateNetworks < ActiveRecord::Migration
  #define a change method in which to do the migration
  def change
    create_table :networks do |t|
      # defining columns is as simple as t.[datatype] :column
      t.string :call_letters
      t.integer :channel
    end
  end
end
