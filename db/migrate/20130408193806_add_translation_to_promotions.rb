class AddTranslationToPromotions < ActiveRecord::Migration
  def up
    Spree::Promotion.create_translation_table!( { :name => :string, :description => :string, :code => :string, :path => :string }, { :migrate_data => true } ) unless ActiveRecord::Base.connection.table_exists?("spree_promotion_translations")

  end
  def down
    Spree::Promotion.drop_translation_table!
  end
end
