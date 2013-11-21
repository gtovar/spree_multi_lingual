class AddTranslationsToOptionValues < ActiveRecord::Migration
  def up
    Spree::OptionValue.create_translation_table!(
      { :presentation => :string }, { :migrate_data => true } ) unless ActiveRecord::Base.connection.table_exists?("spree_option_value_translations")

  end

  def down
    Spree::OptionValue.drop_translation_table!
  end
end
