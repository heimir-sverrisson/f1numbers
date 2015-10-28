class AddMoreToTeams < ActiveRecord::Migration
  def change
    add_column :teams, :technical_chief, :string
    add_column :teams, :power_unit, :string
  end
end
