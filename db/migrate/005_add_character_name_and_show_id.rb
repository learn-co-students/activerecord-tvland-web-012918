class AddCharacterNameAndShowId < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.string :name
      t.integer :show_id
      t.string :catchphrase
    end
  end

end
