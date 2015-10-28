class CreateQualifyingResults < ActiveRecord::Migration
  def change
    create_table :qualifying_results do |t|
      t.integer :position
      t.integer :best_time
      t.references :track, index: true, foreign_key: true
      t.references :driver, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
