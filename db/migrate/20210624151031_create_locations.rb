class CreateLocations < ActiveRecord::Migration[6.0]
  def change
    create_table :locations, :id => false do |t|
      t.integer :id
      t.string :name
      t.string :city

      t.timestamps
    end
  end
end
