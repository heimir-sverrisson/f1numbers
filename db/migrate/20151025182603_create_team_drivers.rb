class CreateTeamDrivers < ActiveRecord::Migration
  def change
    create_table :team_drivers do |t|
      t.text :notes
      t.date :started
      t.date :ended
      t.references :team, index: true, foreign_key: true
      t.references :driver, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
