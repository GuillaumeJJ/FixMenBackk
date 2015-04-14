class CreateArtisans < ActiveRecord::Migration
  def change
    create_table :artisans do |t|
      t.string :description
      t.string :firstname
      t.string :lastname
      t.string :society
      t.string :phone
      t.string :location

      t.timestamps null: false
    end
  end
end
