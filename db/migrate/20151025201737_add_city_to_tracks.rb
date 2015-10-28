class AddCityToTracks < ActiveRecord::Migration
  def change
    add_column :tracks, :city, :string
  end
end
