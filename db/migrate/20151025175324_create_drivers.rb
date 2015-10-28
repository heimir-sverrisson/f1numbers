class CreateDrivers < ActiveRecord::Migration
  def change
    create_table :drivers do |t|
      t.string :name
      t.string :nickname
      t.date :date_of_birth
      t.references :country, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
