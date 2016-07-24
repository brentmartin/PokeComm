class CreateGyms < ActiveRecord::Migration
  def change
    create_table :gyms do |t|
      t.string :name
      t.string :controlling_team
      t.string :latitude
      t.string :longitude

      t.timestamps null: false
    end
  end
end
