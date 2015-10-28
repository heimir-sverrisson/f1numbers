class CreateRaceResults < ActiveRecord::Migration
  def change
    create_table :race_results do |t|
      t.integer :position
      t.integer :fastest_lap
      t.boolean :dnf
      t.integer :dnf_lap
      t.integer :points
      t.references :track, index: true, foreign_key: true
      t.references :driver, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
