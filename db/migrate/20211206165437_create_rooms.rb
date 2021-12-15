class CreateRooms < ActiveRecord::Migration[6.1]
  def change
    create_table :rooms do |t|
      t.references :hotel, foreign_key: true
      t.integer :category

      t.timestamps
    end
  end
end
