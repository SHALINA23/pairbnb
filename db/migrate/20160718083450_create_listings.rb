class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string :user_id
      t.string :destination
      t.string :start_date
      t.string :end_date
      t.string :type_of_property
      t.string :title
      t.string :no_of_guest
      t.string :no_of_bedrooms
      t.string :no_of_beds
      t.string :no_of_bathrooms
      t.string :description_of_property

      t.timestamps null: false
    end
  end
end
