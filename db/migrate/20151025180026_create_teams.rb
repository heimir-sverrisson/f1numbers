class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :name
      t.string :principal
      t.string :home_base
      t.integer :year_created
      t.references :country, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
