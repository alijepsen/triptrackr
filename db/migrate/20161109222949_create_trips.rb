class CreateTrips < ActiveRecord::Migration[5.0]
  def change
    create_table :trips do |t|
      t.string :name
      t.date :from
      t.date :to

      t.timestamps
    end
  end
end
