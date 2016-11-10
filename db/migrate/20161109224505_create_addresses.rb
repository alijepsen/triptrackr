class CreateAddresses < ActiveRecord::Migration[5.0]
  def change
    create_table :addresses do |t|
      t.string :street
      t.string :city
      t.string :state
      t.integer :postal
      t.string :country
      t.float :latitude
      t.float :longitude
      t.belongs_to :location, foreign_key: true

      t.timestamps
    end
  end
end
