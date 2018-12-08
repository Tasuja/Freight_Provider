class CreateFreightProvider < ActiveRecord::Migration[5.2]
  def change
    create_table :freight_providers do |t|
      t.string :name
      t.string :address
      t.string :registration_number
      t.string :phone
    end
  end
end
