class AddLongdescToTracks < ActiveRecord::Migration
  def change
    add_column :tracks, :longdesc, :string
  end
end
