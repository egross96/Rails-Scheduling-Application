class CreateTechnicians < ActiveRecord::Migration[6.0]
  def change
    create_table :technicians, :id => false do |t|
      t.integer :id
      t.string :name
      t.string :city

      t.timestamps
    end
  end
end
