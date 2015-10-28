class AddMoreToTracks < ActiveRecord::Migration
  def change
    add_column :tracks, :laps, :integer
    add_column :tracks, :length, :decimal
    add_column :tracks, :distance, :decimal
  end
end
