class AddReferenceToFreightProvider < ActiveRecord::Migration[5.2]
  def change
    add_reference :freight_provider_rates, :freight_provider, foreign_key: true
    add_reference :freight_provider_subscriptions, :freight_provider, foreign_key: true

  end
end
