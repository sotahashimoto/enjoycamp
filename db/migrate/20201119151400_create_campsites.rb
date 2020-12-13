class CreateCampsites < ActiveRecord::Migration[5.2]
  def change
    create_table :campsites do |t|
      t.string :image_id
      t.string :name
      t.string :business_period
      t.string :postcode
      t.string :address
      t.float :latitude
      t.float :longitude
      t.timestamps
    end
  end
end