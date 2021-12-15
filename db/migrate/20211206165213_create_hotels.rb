class CreateHotels < ActiveRecord::Migration[6.1]
  def change
    create_table :hotels do |t|
      t.string :name
      t.string :country
      t.string :city
      t.string :address

      t.timestamps
    end
  end
end
