class CreateTracks < ActiveRecord::Migration
  def change
    create_table :tracks do |t|
      t.string :name
      t.integer :year_started
      t.decimal :latitude
      t.decimal :longitude
      t.string :time_zone
      t.references :country, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
