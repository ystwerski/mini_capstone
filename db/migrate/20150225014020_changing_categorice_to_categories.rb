class ChangingCategoriceToCategories < ActiveRecord::Migration
  	def self.up
    rename_table :categorice_products, :categorized_products

  end
end
