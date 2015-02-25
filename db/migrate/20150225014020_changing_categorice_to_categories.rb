class ChangingCategoriceToCategories < ActiveRecord::Migration
  	def self.up
    rename_table :categories_products, :categorized_products

  end
end
