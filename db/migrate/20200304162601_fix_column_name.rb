class FixColumnName < ActiveRecord::Migration[5.2]
  def change
  	rename_column :children, :first_name_string, :first_name
  end
end
