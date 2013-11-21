class AddTranslationToTaxCategory < ActiveRecord::Migration
  def up
    Spree::TaxCategory.create_translation_table!( { :name => :string }, { :migrate_data => true } ) unless ActiveRecord::Base.connection.table_exists?("spree_tax_category_translations")

  end
  def down
    Spree::TaxCategory.drop_translation_table!
  end  
end
