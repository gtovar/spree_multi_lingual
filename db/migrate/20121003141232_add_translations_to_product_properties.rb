class AddTranslationsToProductProperties < ActiveRecord::Migration
  def up
    Spree::ProductProperty.create_translation_table!(
      { :value => :string }, { :migrate_data => true } ) unless ActiveRecord::Base.connection.table_exists?("spree_product_property_translations")

  end

  def down
    Spree::ProductProperty.drop_translation_table!
  end
end
