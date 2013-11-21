class AddTranslationToProperty < ActiveRecord::Migration
  def up
    Spree::Property.create_translation_table!( { :presentation => :string }, { :migrate_data => true } ) unless ActiveRecord::Base.connection.table_exists?("spree_property_translations")

  end
  def down
    Spree::Property.drop_translation_table!
  end
end
