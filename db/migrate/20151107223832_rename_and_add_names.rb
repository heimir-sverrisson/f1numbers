class RenameAndAddNames < ActiveRecord::Migration
  def change
    rename_column :drivers, :name, :last_name
    add_column :drivers, :first_name, :string

    Driver.update_all("first_name=last_name")

    change_column_null :drivers, :first_name, false
  end
end
