class AddConstraints < ActiveRecord::Migration
  def change
    change_column :continents, :name, :string, null: false, unique: true
    change_column :countries, :name, :string, null: false, unique: true
    change_column_null :countries, :continent_id, false
    change_column_null :drivers, :name, false
    change_column_null :drivers, :date_of_birth, false
    change_column_null :drivers, :country_id, false
    change_column :teams, :name, :string, null: false, unique: true
    change_column_null :teams, :principal, false
    change_column_null :teams, :power_unit, false
    change_column_null :teams, :country_id, false
    change_column :tracks, :name, :string, null: false, unique: true
    change_column_null :tracks, :year_started, false
    change_column_null :tracks, :time_zone, false
    change_column_null :tracks, :country_id, false
    change_column_null :tracks, :city, false
    change_column_null :tracks, :laps, false
    change_column_null :tracks, :length, false
    change_column_null :tracks, :distance, false
  end
end
