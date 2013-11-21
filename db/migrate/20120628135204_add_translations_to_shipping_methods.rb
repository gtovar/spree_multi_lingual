class AddTranslationsToShippingMethods < ActiveRecord::Migration
  def up
    Spree::ShippingMethod.create_translation_table!({:name => :string}, { :migrate_data => true }) unless ActiveRecord::Base.connection.table_exists?("spree_shipping_method_translations")

  end

  def down
    Spree::ShippingMethod.drop_translation_table!
  end
end
