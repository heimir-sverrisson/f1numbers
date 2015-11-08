class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :race_results, :track_id, :race_id
  end
end
