class CreateFreightProviderSubscriptions < ActiveRecord::Migration[5.2]
  def change
    create_table :freight_provider_subscriptions do |t|
      t.string  :name      
      # t.belongs_to :freight_provider
      t.string :destinations, default: [], array: true
      t.integer :delivery_speed_hours
      t.float :kg_from
      t.float :kg_to
      t.float :rate
      t.float :additional_per_kg_rate
      t.float :additional_per_kg_limit
      t.float :minimum_distance_km
      t.float :maximum_distance_km


      t.integer :parcel_count_limit
    end
  end
end
