class CreatePhotos < ActiveRecord::Migration[5.2]
  def change
    create_table :photos do |t|
      t.string :image_url
      t.string :description
      t.float :latitude
      t.float :longtitude
      t.integer :user_id

      t.timestamps
    end
  end
end
