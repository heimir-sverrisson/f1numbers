class CreateRaces < ActiveRecord::Migration
  def change
    create_table :races do |t|
      t.datetime :qualifying_date
      t.datetime :race_date
      t.integer :laps
      t.text :weather
      t.text :notes
      t.references :track, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
