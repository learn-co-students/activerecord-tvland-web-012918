class AddShowColumns < ActiveRecord::Migration
  def change

    add_column(:actors, :name, :string)
    add_column(:actors, :day, :string)
    add_column(:actors, :season, :string)

  end
end
