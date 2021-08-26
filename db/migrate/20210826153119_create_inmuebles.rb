class CreateInmuebles < ActiveRecord::Migration[5.0]
  def change
    create_table :inmuebles do |t|
      t.string :name
      t.string :type_inmueble
      t.string :street
      t.string :external_number
      t.string :internal_number
      t.string :neighborhood
      t.string :city
      t.string :country
      t.integer :rooms
      t.integer :bathrooms
      t.string :comments

      t.timestamps
    end
  end
end
