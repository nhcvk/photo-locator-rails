class ChangeLongitudeColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :photos, :longtitude, :longitude 
  end
end
