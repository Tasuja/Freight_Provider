class CreateFreightProviderRates < ActiveRecord::Migration[5.2]
  def change
    create_table :freight_provider_rates do |t|
      # t.belongs_to :freight_provider
      t.string :service_type
      # t.float :kg
      t.float :kg_from
      t.float :kg_to
      t.float :rate
      t.string :type_of_transportation
      
      t.float :additional_per_kg_rate
      t.float :additional_per_kg_limit
      t.string :destinations, default: [], array: true
      t.string :mode_of_transportation

      t.boolean :per_package
      t.integer :package_dimension, default: [], array: true
      t.integer :delivery_speed_hours
      t.string :remarks

      t.float :minimum_distance_km
      t.float :maximum_distance_km
      t.float :distance_penalty_rate_per_km
    end
  end
end
