class FixColumnName2 < ActiveRecord::Migration[5.2]
  
  def change
    rename_column :children, :age_integer, :age
  end
  
end
