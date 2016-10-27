class CreateReservations < ActiveRecord::Migration[5.0]
  def change
    create_table :reservations do |t|
      t.string :firstname
      t.string :lastname
      t.string :email
      t.string :address
      t.integer :zip
      t.string :city
      t.string :phone
      t.date :date
      t.string :description

      t.timestamps
    end
  end
end
