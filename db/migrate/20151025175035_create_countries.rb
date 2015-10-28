class CreateCountries < ActiveRecord::Migration
  def change
    create_table :countries do |t|
      t.string :name
      t.integer :population
      t.references :continent, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
